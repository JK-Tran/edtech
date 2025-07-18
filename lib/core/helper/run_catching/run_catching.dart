import 'package:edtech/core/exception/base/app_exception.dart';
import 'package:edtech/core/helper/run_catching/result.dart';


Result<O> runCatching<O>({
  required O Function() action,
}) {
  try {
    return Result.success(action.call());
  } on AppException catch (e) {
    return Result.failure(e);
  }
}

Future<Result<O>> runAsyncCatching<O>({
  required Future<O> Function() action,
}) async {
  try {
    final output = await action.call();

    return Result.success(output);
  } on AppException catch (e) {
    return Result.failure(e);
  }
}
