import 'package:edtech/app/features/auth/data/models/user_data.dart';
import 'package:edtech/app/features/auth/domain/entity/user.dart';
import 'package:edtech/core/constants/format/date_time_format_constants.dart';
import 'package:edtech/core/utils/date_time_utils.dart';
import 'package:injectable/injectable.dart';

import 'gender_data_mapper.dart';

@Injectable()
class UserDataMapper {
  UserDataMapper(this._genderDataMapper);

  final GenderDataMapper _genderDataMapper;

  User mapToEntity(UserData? data) {
    if (data == null) {
      return User();
    }

    final detail = data.detail;
    return User(
      id: data.id,
      email: data.email ?? '',
      isLock: data.isLock,
      loginType: data.loginType,
      firstName: detail?.firstName ?? '',
      lastName: detail?.lastName ?? '',
      fullName: detail?.fullName ?? '',
      gender: _genderDataMapper.mapToEntity(detail?.gender),
      address: detail?.address ?? '',
      birthday: DateTimeUtils.tryParse(date: detail?.birthday),
      phoneNumber: detail?.phoneNumber ?? '',
      phoneCode: detail?.phoneCode ?? '',
      oldPhoneNumber: detail?.oldPhoneNumber ?? '',
      countryId: detail?.countryId ?? 0,
      bio: detail?.bio ?? '',
      experience: detail?.experience ?? '',
    );
  }

  UserData mapToData(User entity) {
    return UserData(
      id: entity.id,
      email: entity.email,
      detail: UserDetailData(
        userId: entity.id,
        fullName: entity.fullName,
        lastName: entity.lastName,
        firstName: entity.firstName,
        gender: _genderDataMapper.mapToData(entity.gender),
        address: entity.address,
        birthday: entity.birthday
            ?.toStringWithFormat(DateTimeFormatConstants.appServerRequest),
        phoneNumber: entity.phoneNumber,
        phoneCode: entity.phoneCode,
        oldPhoneNumber: entity.oldPhoneNumber,
        countryId: entity.countryId,
        bio: entity.bio,
        experience: entity.experience,
      ),
      isLock: entity.isLock,
      loginType: entity.loginType,
    );
  }
}
