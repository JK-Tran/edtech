import 'package:edtech/core/constants/ui/paging_constants.dart';
import 'package:edtech/core/exception/base/app_exception.dart';
import 'package:edtech/core/helper/stream/disposable.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/load_more_output.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class CommonPagingController<T> implements Disposable {
  CommonPagingController({
    this.invisibleItemsThreshold =
        PagingConstants.defaultInvisibleItemsThreshold,
    this.firstPageKey = PagingConstants.initialPage,
  }) : pagingController = PagingController<int, T>(
          firstPageKey: firstPageKey,
          invisibleItemsThreshold: invisibleItemsThreshold,
        );

  final PagingController<int, T> pagingController;

  final int? invisibleItemsThreshold;
  final int firstPageKey;

  // call when error
  // ignore: avoid_setters_without_getters
  set error(AppException? appException) {
    pagingController.error = appException;
  }

  AppException? get error => pagingController.error is AppException
      ? pagingController.error as AppException
      : null;

  // call when initState to listen to trigger load more
  void listen({
    required VoidCallback onLoadMore,
  }) {
    pagingController.addPageRequestListener((pageKey) {
      if (pageKey > PagingConstants.initialPage) {
        onLoadMore();
      }
    });
  }

  // call append data when load first page / more page success
  void appendLoadMoreOutput(LoadMoreOutput<T> loadMoreOutput) {
    if (loadMoreOutput.isRefreshSuccess) {
      pagingController.refresh();
    }

    if (loadMoreOutput.isLastPage) {
      pagingController.appendLastPage(loadMoreOutput.data);
    } else {
      pagingController.appendPage(
        loadMoreOutput.data,
        (pagingController.nextPageKey ?? (PagingConstants.initialPage - 1)) + 1,
      );
    }
  }

  void insertItemAt(int index, T item) {
    pagingController.itemList?.insert(index, item);
    // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
    pagingController.notifyListeners();
  }

  void insertAllItemsAt(int index, Iterable<T> items) {
    pagingController.itemList?.insertAll(index, items);
    // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
    pagingController.notifyListeners();
  }

  void updateItemAt(int index, T newItem) {
    pagingController.itemList?[index] = newItem;
    // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
    pagingController.notifyListeners();
  }

  void removeItemAt(int index) {
    pagingController.itemList?.removeAt(index);
    // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
    pagingController.notifyListeners();
  }

  void removeItemWhere(bool Function(T) condition) {
    pagingController.itemList?.removeWhere(condition);
    // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
    pagingController.notifyListeners();
  }

  void removeRange(int start, int end) {
    pagingController.itemList?.removeRange(start, end);
    // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
    pagingController.notifyListeners();
  }

  void clear(int start, int end) {
    pagingController.itemList?.clear();
    // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
    pagingController.notifyListeners();
  }

  @override
  void dispose() {
    pagingController.dispose();
  }
}
