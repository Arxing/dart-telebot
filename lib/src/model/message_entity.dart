import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'message_entity.g.dart';

@JsonSerializable(includeIfNull: false)
class MessageEntity {
  /// Type of the entity. Can be “mention” (@username), “hashtag” (#hashtag), “cashtag” ($USD), “bot_command” (/start@jobs_bot), “url” (https://telegram.org), “email” (do-not-reply@telegram.org), “phone_number” (+1-212-555-0123), “bold” (bold text), “italic” (italic text), “underline” (underlined text), “strikethrough” (strikethrough text), “code” (monowidth string), “pre” (monowidth block), “text_link” (for clickable text URLs), “text_mention” (for users without usernames)
  @JsonKey(name: "type")
  String type;

  /// Offset in UTF-16 code units to the start of the entity
  @JsonKey(name: "offset")
  int offset;

  /// Length of the entity in UTF-16 code units
  @JsonKey(name: "length")
  int length;

  /// Optional. For “text_link” only, url that will be opened after user taps on the text
  @JsonKey(name: "url")
  String url;

  /// Optional. For “text_mention” only, the mentioned user
  @JsonKey(name: "user")
  User user;

  /// Optional. For “pre” only, the programming language of the entity text
  @JsonKey(name: "language")
  String language;

  MessageEntity(
      {this.type,
      this.offset,
      this.length,
      this.url,
      this.user,
      this.language});
  factory MessageEntity.fromJson(Map<String, dynamic> json) =>
      _$MessageEntityFromJson(json);

  Map<String, dynamic> toJson() => _$MessageEntityToJson(this);

  String toString() => jsonEncode(toJson());
}
