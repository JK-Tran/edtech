import 'dart:async';

import 'package:edtech/app/features/auth/domain/repositories/auth_repository.dart';
import 'package:edtech/core/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/base_input.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'logout_use_case.freezed.dart';

@Injectable()
class LogoutUseCase extends BaseFutureUseCase<LogoutInput, LogoutOutput> {
  const LogoutUseCase(this._repository);

  final AuthRepository _repository;

  @protected
  @override
  Future<LogoutOutput> buildUseCase(LogoutInput input) async {
    if (await _repository.isLoggedIn) {
      unawaited(_repository.logout());
    } else {
      await _repository.clearCurrentUserData();
    }

    return const LogoutOutput();
  }
}

@freezed
class LogoutInput extends BaseInput with _$LogoutInput {
  const factory LogoutInput() = _LogoutUseCase;
}

@freezed
class LogoutOutput extends BaseOutput with _$LogoutOutput {
  const factory LogoutOutput() = _LogoutOutput;

  const LogoutOutput._();
}
