import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'chosen_inline_result.g.dart';

@JsonSerializable(includeIfNull: false)
class ChosenInlineResult {
  /// The unique identifier for the result that was chosen
  @JsonKey(name: "result_id")
  String resultId;

  /// The user that chose the result
  @JsonKey(name: "from")
  User from;

  /// Optional. Sender location, only for bots that require user location
  @JsonKey(name: "location")
  Location location;

  /// Optional. Identifier of the sent inline message. Available only if there is an inline keyboard attached to the message. Will be also received in callback queries and can be used to edit the message.
  @JsonKey(name: "inline_message_id")
  String inlineMessageId;

  /// The query that was used to obtain the result
  @JsonKey(name: "query")
  String query;

  ChosenInlineResult(
      {this.resultId,
      this.from,
      this.location,
      this.inlineMessageId,
      this.query});
  factory ChosenInlineResult.fromJson(Map<String, dynamic> json) =>
      _$ChosenInlineResultFromJson(json);

  Map<String, dynamic> toJson() => _$ChosenInlineResultToJson(this);

  String toString() => jsonEncode(toJson());
}
