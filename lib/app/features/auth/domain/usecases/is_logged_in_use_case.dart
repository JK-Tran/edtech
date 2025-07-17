import 'package:edtech/app/features/auth/domain/repositories/auth_repository.dart';
import 'package:edtech/core/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/base_input.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'is_logged_in_use_case.freezed.dart';

@Injectable()
class IsLoggedInUseCase
    extends BaseFutureUseCase<IsLoggedInInput, IsLoggedInOutput> {
  const IsLoggedInUseCase(this._repository);

  final AuthRepository _repository;

  @protected
  @override
  Future<IsLoggedInOutput> buildUseCase(IsLoggedInInput input) async {
    return IsLoggedInOutput(isLoggedIn: await _repository.isLoggedIn);
  }
}

@freezed
class IsLoggedInInput extends BaseInput with _$IsLoggedInInput {
  const factory IsLoggedInInput() = _IsLoggedInInput;
}

@freezed
class IsLoggedInOutput extends BaseOutput with _$IsLoggedInOutput {
  const factory IsLoggedInOutput({
    @Default(false) bool isLoggedIn,
  }) = _IsLoggedInOutput;

  const IsLoggedInOutput._();
}
