import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'inline_query_result.g.dart';

@JsonSerializable(includeIfNull: false)
class InlineQueryResult {
  InlineQueryResult();
  factory InlineQueryResult.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultFromJson(json);

  Map<String, dynamic> toJson() => _$InlineQueryResultToJson(this);

  String toString() => jsonEncode(toJson());
}
