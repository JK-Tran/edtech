import 'package:freezed_annotation/freezed_annotation.dart';

part 'results_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ResultsListResponse<T> {
  ResultsListResponse({
    this.results,
    this.page,
    this.offset,
    this.total,
    this.next,
    this.prev,
  });

  factory ResultsListResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$ResultsListResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$ResultsListResponseToJson(this, toJsonT);

  @JsonKey(name: 'results')
  final List<T>? results;
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
