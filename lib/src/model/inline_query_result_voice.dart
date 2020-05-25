import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'inline_query_result_voice.g.dart';

@JsonSerializable(includeIfNull: false)
class InlineQueryResultVoice {
  /// Type of the result, must be voice
  @JsonKey(name: "type")
  String type;

  /// Unique identifier for this result, 1-64 bytes
  @JsonKey(name: "id")
  String id;

  /// A valid URL for the voice recording
  @JsonKey(name: "voice_url")
  String voiceUrl;

  /// Recording title
  @JsonKey(name: "title")
  String title;

  /// Optional. Caption, 0-1024 characters after entities parsing
  @JsonKey(name: "caption")
  String caption;

  /// Optional. Send Markdown or HTML, if you want Telegram apps to show bold, italic, fixed-width text or inline URLs in the media caption.
  @JsonKey(name: "parse_mode")
  String parseMode;

  /// Optional. Recording duration in seconds
  @JsonKey(name: "voice_duration")
  int voiceDuration;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: "reply_markup")
  InlineKeyboardMarkup replyMarkup;

  /// Optional. Content of the message to be sent instead of the voice recording
  @JsonKey(name: "input_message_content")
  InputMessageContent inputMessageContent;

  InlineQueryResultVoice(
      {this.type,
      this.id,
      this.voiceUrl,
      this.title,
      this.caption,
      this.parseMode,
      this.voiceDuration,
      this.replyMarkup,
      this.inputMessageContent});
  factory InlineQueryResultVoice.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultVoiceFromJson(json);

  Map<String, dynamic> toJson() => _$InlineQueryResultVoiceToJson(this);

  String toString() => jsonEncode(toJson());
}
