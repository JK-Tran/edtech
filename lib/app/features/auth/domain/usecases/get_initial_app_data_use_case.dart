import 'package:edtech/app/features/auth/domain/entity/user.dart';
import 'package:edtech/app/features/auth/domain/repositories/auth_repository.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/base_input.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/base_output.dart';
import 'package:edtech/core/utils/log_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/infrastructure/domain/usecase/future/base_future_use_case.dart';

part 'get_initial_app_data_use_case.freezed.dart';

@Injectable()
class GetInitialAuthDataUseCase extends BaseFutureUseCase<
    GetInitialAuthDataInput, GetInitialAuthDataOutput> {
  const GetInitialAuthDataUseCase(this._repository);

  final AuthRepository _repository;

  @protected
  @override
  Future<GetInitialAuthDataOutput> buildUseCase(
    GetInitialAuthDataInput input,
  ) async {
    final isLoggedIn = await _repository.isLoggedIn;
    Log.d('🔐 isLoggedIn: $isLoggedIn');

    User? user;
    if (isLoggedIn) {
      // Nếu đã đăng nhập, lấy thông tin user từ local storage
      user = _repository.getCurrentUser();
      Log.d('👤 Current User: ${user.toJson()}');
    }

    return GetInitialAuthDataOutput(
      isLoggedIn: isLoggedIn,
      user: user,
    );
  }
}

@freezed
class GetInitialAuthDataInput extends BaseInput with _$GetInitialAuthDataInput {
  const factory GetInitialAuthDataInput() = _GetInitialAuthDataInput;
}

@freezed
class GetInitialAuthDataOutput extends BaseOutput
    with _$GetInitialAuthDataOutput {
  const factory GetInitialAuthDataOutput({
    @Default(false) bool isLoggedIn,
    User? user,
  }) = _GetInitialAuthDataOutput;

  const GetInitialAuthDataOutput._();
}
