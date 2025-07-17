import 'package:edtech/app/features/auth/domain/entity/user.dart';
import 'package:edtech/app/features/auth/domain/repositories/auth_repository.dart';
import 'package:edtech/core/constants/env_constants.dart';
import 'package:edtech/core/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/base_input.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/base_output.dart';
import 'package:edtech/core/model/shared_enum.dart';
import 'package:edtech/core/services/firebase/firebase_analytics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'save_current_user_use_case.freezed.dart';

@Injectable()
class SaveCurrentUserUseCase
    extends BaseFutureUseCase<SaveCurrentUserInput, SaveCurrentUserOutput> {
  SaveCurrentUserUseCase(this._repository);

  final AuthRepository _repository;

  @protected
  @override
  Future<SaveCurrentUserOutput> buildUseCase(SaveCurrentUserInput input) async {
    final currentUser = input.currentUser;
    await _repository.saveCurrentUser(input.currentUser);
    await setCurrentUser(currentUser);

    return const SaveCurrentUserOutput();
  }

  Future<void> setCurrentUser(User user) {
    if (EnvConstants.flavor == Flavor.production) {
      return Future.wait<dynamic>([
        AntoreeAnalytics.instance.setUserId(id: '${user.id}_${user.fullName}'),
        AntoreeAnalytics.instance.setUserProperty(
          name: 'name',
          value: user.fullName,
        ),
        AntoreeAnalytics.instance.setUserProperty(
          name: 'email',
          value: user.email,
        ),
      ]);
    }

    return Future.value();
  }
}

@freezed
class SaveCurrentUserInput extends BaseInput with _$SaveCurrentUserInput {
  const factory SaveCurrentUserInput({
    required User currentUser,
  }) = _SaveCurrentUserInput;
}

@freezed
class SaveCurrentUserOutput extends BaseOutput with _$SaveCurrentUserOutput {
  const factory SaveCurrentUserOutput() = _SaveCurrentUserOutput;

  const SaveCurrentUserOutput._();
}
