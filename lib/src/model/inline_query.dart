import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'inline_query.g.dart';

@JsonSerializable(includeIfNull: false)
class InlineQuery {
  /// Unique identifier for this query
  @JsonKey(name: "id")
  String id;

  /// Sender
  @JsonKey(name: "from")
  User from;

  /// Optional. Sender location, only for bots that request user location
  @JsonKey(name: "location")
  Location location;

  /// Text of the query (up to 256 characters)
  @JsonKey(name: "query")
  String query;

  /// Offset of the results to be returned, can be controlled by the bot
  @JsonKey(name: "offset")
  String offset;

  InlineQuery({this.id, this.from, this.location, this.query, this.offset});
  factory InlineQuery.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryFromJson(json);

  Map<String, dynamic> toJson() => _$InlineQueryToJson(this);

  String toString() => jsonEncode(toJson());
}
