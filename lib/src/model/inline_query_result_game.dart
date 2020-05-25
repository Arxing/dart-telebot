import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'inline_query_result_game.g.dart';

@JsonSerializable(includeIfNull: false)
class InlineQueryResultGame {
  /// Type of the result, must be game
  @JsonKey(name: "type")
  String type;

  /// Unique identifier for this result, 1-64 bytes
  @JsonKey(name: "id")
  String id;

  /// Short name of the game
  @JsonKey(name: "game_short_name")
  String gameShortName;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: "reply_markup")
  InlineKeyboardMarkup replyMarkup;

  InlineQueryResultGame(
      {this.type, this.id, this.gameShortName, this.replyMarkup});
  factory InlineQueryResultGame.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultGameFromJson(json);

  Map<String, dynamic> toJson() => _$InlineQueryResultGameToJson(this);

  String toString() => jsonEncode(toJson());
}
