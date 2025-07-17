import 'package:freezed_annotation/freezed_annotation.dart';

part 'records_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class RecordsListResponse<T> {
  RecordsListResponse({
    this.records,
    this.page,
    this.offset,
    this.total,
    this.next,
    this.prev,
  });

  factory RecordsListResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$RecordsListResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$RecordsListResponseToJson(this, toJsonT);

  @JsonKey(name: 'records')
  final List<T>? records;
  @JsonKey(name: 'page')
  final int? page;
  @JsonKey(name: 'offset')
  final int? offset;
  @JsonKey(name: 'total')
  final int? total;
  @JsonKey(name: 'next')
  final int? next;
  @JsonKey(name: 'prev')
  final int? prev;
}
