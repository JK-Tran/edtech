import 'package:edtech/core/config/log_config.dart';
import 'package:edtech/core/constants/ui/paging_constants.dart';
import 'package:edtech/core/exception/base/app_exception.dart';
import 'package:edtech/core/exception/uncaught/app_uncaught_exception.dart';
import 'package:edtech/core/infrastructure/domain/entity/paged_list.dart';
import 'package:edtech/core/infrastructure/domain/usecase/base_use_case.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/base_input.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/load_more_output.dart';

abstract class BaseLoadMoreUseCase<Input extends BaseInput, Output>
    extends BaseUseCase<Input, Future<PagedList<Output>>> {
  BaseLoadMoreUseCase({
    this.initPage = PagingConstants.initialPage,
    this.initOffset = 0,
  })  : _output = LoadMoreOutput<Output>(
          data: <Output>[],
          page: initPage,
          offset: initOffset,
        ),
        _oldOutput = LoadMoreOutput<Output>(
          data: <Output>[],
          page: initPage,
          offset: initOffset,
        );

  final int initPage;
  final int initOffset;

  LoadMoreOutput<Output> _output;
  LoadMoreOutput<Output> _oldOutput;

  int get page => _output.page;
  int get offset => _output.offset;

  Future<LoadMoreOutput<Output>> execute(
    Input input, {
    required bool isInitialLoad,
  }) async {
    try {
      if (isInitialLoad) {
        _output = LoadMoreOutput<Output>(
          data: <Output>[],
          page: initPage,
          offset: initOffset,
        );
      }
      if (LogConfig.enableLogUseCaseInput) {
        logD(
          'LoadMoreUseCase Input: $input, page: $page, offset: $offset',
        );
      }
      final pagedList = await buildUseCase(input);

      final newOutput = _oldOutput.copyWith(
        data: pagedList.data,
        page: isInitialLoad
            ? initPage + (pagedList.data.isNotEmpty ? 1 : 0)
            : _oldOutput.page + (pagedList.data.isNotEmpty ? 1 : 0),
        offset: isInitialLoad
            ? (initOffset + pagedList.data.length)
            : _oldOutput.offset + pagedList.data.length,
        isLastPage: pagedList.isLastPage,
        isRefreshSuccess: isInitialLoad,
      );

      _output = newOutput;
      _oldOutput = newOutput;
      if (LogConfig.enableLogUseCaseOutput) {
        logD(
          'LoadMoreUseCase Output: pagedList: $pagedList, inputPage: $page'
          'inputOffset: $offset, newOutput: $newOutput',
        );
      }

      return newOutput;
    } catch (e) {
      if (LogConfig.enableLogUseCaseError) {
        logE('FutureUseCase Error: $e');
      }
      _output = _oldOutput;

      throw e is AppException ? e : AppUncaughtException(e);
    }
  }
}
