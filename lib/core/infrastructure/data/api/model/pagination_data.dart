import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_data.freezed.dart';
part 'pagination_data.g.dart';

/// Convention, habit or type of the identifiers `camelCase`
@freezed
abstract class PaginationData with _$PaginationData {
  const factory PaginationData({
    int? currentPage,
    bool? hasMore,
    int? totalItems,
    int? totalPage,
    int? itemsPerPage,
  }) = _PaginationData;

  // To JSON
  const PaginationData._();

  factory PaginationData.fromJson(Map<String, dynamic> json) =>
      _$PaginationDataFromJson(json);
}

/// Convention, habit or type of the identifiers `underscores`
@freezed
abstract class PaginationData2 with _$PaginationData2 {
  const factory PaginationData2({
    int? currentPage,
    bool? hasMore,
    int? totalItems,
    int? totalPage,
    int? itemsPerPage,
  }) = _PaginationData2;

  // To JSON
  const PaginationData2._();

  factory PaginationData2.fromJson(Map<String, dynamic> json) =>
      _$PaginationData2FromJson(json);
}
