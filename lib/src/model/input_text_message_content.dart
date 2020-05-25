import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'input_text_message_content.g.dart';

@JsonSerializable(includeIfNull: false)
class InputTextMessageContent {
  /// Text of the message to be sent, 1-4096 characters
  @JsonKey(name: "message_text")
  String messageText;

  /// Optional. Send Markdown or HTML, if you want Telegram apps to show bold, italic, fixed-width text or inline URLs in your bot's message.
  @JsonKey(name: "parse_mode")
  String parseMode;

  /// Optional. Disables link previews for links in the sent message
  @JsonKey(name: "disable_web_page_preview")
  bool disableWebPagePreview;

  InputTextMessageContent(
      {this.messageText, this.parseMode, this.disableWebPagePreview});
  factory InputTextMessageContent.fromJson(Map<String, dynamic> json) =>
      _$InputTextMessageContentFromJson(json);

  Map<String, dynamic> toJson() => _$InputTextMessageContentToJson(this);

  String toString() => jsonEncode(toJson());
}
