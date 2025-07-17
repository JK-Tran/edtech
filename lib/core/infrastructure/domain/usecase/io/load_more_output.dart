import 'package:edtech/core/constants/ui/paging_constants.dart';
import 'package:edtech/core/infrastructure/infrastructure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'load_more_output.freezed.dart';

@freezed
abstract class LoadMoreOutput<T> extends BaseOutput with _$LoadMoreOutput<T> {
  const factory LoadMoreOutput({
    required List<T> data,
    @Default(null) Object? otherData,
    @Default(PagingConstants.initialPage) int page,
    @Default(false) bool isRefreshSuccess,
    @Default(false) bool isLastPage,
    @Default(0) int totalItems,
    @Default(0) int offset,
    @Default(0) int totalPage,
    @Default(0) int itemsPerPage,
  }) = _LoadMoreOutput;
  const LoadMoreOutput._();

  int get nextPage => page + 1;
  int get previousPage => page - 1;
}
