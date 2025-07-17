// import 'package:injectable/injectable.dart';
// import 'package:shared/shared.dart';

// import '../../../features.dart';

// @Injectable()
// class StudentInfoDataMapper extends BaseDataMapper<StudentInfoData, StudentInfo>
//     with DataMapperMixin {
//   StudentInfoDataMapper(
//     this._userDataMapper,
//   );

//   final UserDataMapper _userDataMapper;

//   @override
//   StudentInfo mapToEntity(StudentInfoData? data) {
//     return StudentInfo(
//       user: _userDataMapper.mapToEntity(data?.userProfile),
//       userType: data?.userType ?? 0,
//       priceFrom: data?.priceFrom ?? 0,
//       priceTo: data?.priceTo ?? 0,
//     );
//   }

//   @override
//   StudentInfoData mapToData(StudentInfo entity) {
//     return const StudentInfoData();
//   }
// }
