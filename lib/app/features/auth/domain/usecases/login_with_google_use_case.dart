import 'package:edtech/app/features/auth/domain/entity/user.dart';
import 'package:edtech/app/features/auth/domain/repositories/auth_repository.dart';
import 'package:edtech/core/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/base_input.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_with_google_use_case.freezed.dart';

@Injectable()
class LoginWithGoogleUseCase
    extends BaseFutureUseCase<LoginWithGoogleInput, LoginWithGoogleOutput> {
  const LoginWithGoogleUseCase(this._repository);

  final AuthRepository _repository;

  @override
  Future<LoginWithGoogleOutput> buildUseCase(LoginWithGoogleInput input) async {
    final user = await _repository.loginWithGoogle(
      idToken: input.idToken,
      email: input.email,
      name: input.name,
      photoUrl: input.photoUrl,
    );
    return LoginWithGoogleOutput(user);
  }
}

@freezed
class LoginWithGoogleInput extends BaseInput with _$LoginWithGoogleInput {
  const factory LoginWithGoogleInput({
    required String idToken,
    required String email,
    required String name,
    String? photoUrl,
  }) = _LoginWithGoogleInput;
}

@freezed
class LoginWithGoogleOutput extends BaseOutput with _$LoginWithGoogleOutput {
  const factory LoginWithGoogleOutput(User? user) = _LoginWithGoogleOutput;

  const LoginWithGoogleOutput._();
}
