import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'callback_query.g.dart';

@JsonSerializable(includeIfNull: false)
class CallbackQuery {
  /// Unique identifier for this query
  @JsonKey(name: "id")
  String id;

  /// Sender
  @JsonKey(name: "from")
  User from;

  /// Optional. Message with the callback button that originated the query. Note that message content and message date will not be available if the message is too old
  @JsonKey(name: "message")
  Message message;

  /// Optional. Identifier of the message sent via the bot in inline mode, that originated the query.
  @JsonKey(name: "inline_message_id")
  String inlineMessageId;

  /// Global identifier, uniquely corresponding to the chat to which the message with the callback button was sent. Useful for high scores in games.
  @JsonKey(name: "chat_instance")
  String chatInstance;

  /// Optional. Data associated with the callback button. Be aware that a bad client can send arbitrary data in this field.
  @JsonKey(name: "data")
  String data;

  /// Optional. Short name of a Game to be returned, serves as the unique identifier for the game
  @JsonKey(name: "game_short_name")
  String gameShortName;

  CallbackQuery(
      {this.id,
      this.from,
      this.message,
      this.inlineMessageId,
      this.chatInstance,
      this.data,
      this.gameShortName});
  factory CallbackQuery.fromJson(Map<String, dynamic> json) =>
      _$CallbackQueryFromJson(json);

  Map<String, dynamic> toJson() => _$CallbackQueryToJson(this);

  String toString() => jsonEncode(toJson());
}
