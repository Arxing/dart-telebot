import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'inline_query_result_cached_voice.g.dart';

@JsonSerializable(includeIfNull: false)
class InlineQueryResultCachedVoice {
  /// Type of the result, must be voice
  @JsonKey(name: "type")
  String type;

  /// Unique identifier for this result, 1-64 bytes
  @JsonKey(name: "id")
  String id;

  /// A valid file identifier for the voice message
  @JsonKey(name: "voice_file_id")
  String voiceFileId;

  /// Voice message title
  @JsonKey(name: "title")
  String title;

  /// Optional. Caption, 0-1024 characters after entities parsing
  @JsonKey(name: "caption")
  String caption;

  /// Optional. Send Markdown or HTML, if you want Telegram apps to show bold, italic, fixed-width text or inline URLs in the media caption.
  @JsonKey(name: "parse_mode")
  String parseMode;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: "reply_markup")
  InlineKeyboardMarkup replyMarkup;

  /// Optional. Content of the message to be sent instead of the voice message
  @JsonKey(name: "input_message_content")
  InputMessageContent inputMessageContent;

  InlineQueryResultCachedVoice(
      {this.type,
      this.id,
      this.voiceFileId,
      this.title,
      this.caption,
      this.parseMode,
      this.replyMarkup,
      this.inputMessageContent});
  factory InlineQueryResultCachedVoice.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultCachedVoiceFromJson(json);

  Map<String, dynamic> toJson() => _$InlineQueryResultCachedVoiceToJson(this);

  String toString() => jsonEncode(toJson());
}
