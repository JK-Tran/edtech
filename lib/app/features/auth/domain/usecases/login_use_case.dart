import 'package:edtech/app/features/auth/domain/entity/user.dart';
import 'package:edtech/app/features/auth/domain/repositories/auth_repository.dart';
import 'package:edtech/core/exception/validation/validation_exception.dart';
import 'package:edtech/core/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/base_input.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/base_output.dart';
import 'package:edtech/core/utils/validation_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_use_case.freezed.dart';

@Injectable()
class LoginUseCase extends BaseFutureUseCase<LoginInput, LoginOutput> {
  const LoginUseCase(this._repository);

  final AuthRepository _repository;

  @protected
  @override
  Future<LoginOutput> buildUseCase(LoginInput input) async {
    User? user;

    if (!ValidationUtils.isValidPassword(input.password)) {
      throw const ValidationException(ValidationExceptionKind.invalidPassword);
    }
    if (ValidationUtils.isValidEmail(input.email)) {
      await _repository.login(
        email: input.email,
        password: input.password,
      );
      user = await _repository.getMe();
    } else {
      throw const ValidationException(ValidationExceptionKind.invalidEmail);
    }
    return LoginOutput(user);
  }
}

@freezed
class LoginInput extends BaseInput with _$LoginInput {
  const factory LoginInput({
    required String email,
    required String password,
  }) = _LoginInput;
}

@freezed
class LoginOutput extends BaseOutput with _$LoginOutput {
  const factory LoginOutput(User? user) = _LoginOutput;

  const LoginOutput._();
}
