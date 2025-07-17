import 'package:edtech/core/infrastructure/data/api/model/pagination_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_response.freezed.dart';
part 'data_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class DataResponse<T> {
  DataResponse({
    this.data,
    this.meta,
  });

  factory DataResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$DataResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$DataResponseToJson(this, toJsonT);

  @JsonKey(name: 'data')
  final T? data;
  @JsonKey(name: 'meta')
  final Meta? meta;
}

@JsonSerializable(genericArgumentFactories: true)
class DataListResponse<T> {
  DataListResponse({
    this.data,
    this.pagination,
  });

  factory DataListResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$DataListResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$DataListResponseToJson(this, toJsonT);

  @JsonKey(name: 'data')
  final List<T>? data;
  @JsonKey(name: 'pagination')
  final PaginationData? pagination;
}

@freezed
class Meta with _$Meta {
  factory Meta({
    PageInfo? pageInfo,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
class PageInfo with _$PageInfo {
  factory PageInfo({
    int? next,
  }) = _PageInfo;

  factory PageInfo.fromJson(Map<String, dynamic> json) =>
      _$PageInfoFromJson(json);
}
