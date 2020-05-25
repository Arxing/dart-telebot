import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'inline_query_result_mpeg4_gif.g.dart';

@JsonSerializable(includeIfNull: false)
class InlineQueryResultMpeg4Gif {
  /// Type of the result, must be mpeg4_gif
  @JsonKey(name: "type")
  String type;

  /// Unique identifier for this result, 1-64 bytes
  @JsonKey(name: "id")
  String id;

  /// A valid URL for the MP4 file. File size must not exceed 1MB
  @JsonKey(name: "mpeg4_url")
  String mpeg4Url;

  /// Optional. Video width
  @JsonKey(name: "mpeg4_width")
  int mpeg4Width;

  /// Optional. Video height
  @JsonKey(name: "mpeg4_height")
  int mpeg4Height;

  /// Optional. Video duration
  @JsonKey(name: "mpeg4_duration")
  int mpeg4Duration;

  /// URL of the static thumbnail (jpeg or gif) for the result
  @JsonKey(name: "thumb_url")
  String thumbUrl;

  /// Optional. Title for the result
  @JsonKey(name: "title")
  String title;

  /// Optional. Caption of the MPEG-4 file to be sent, 0-1024 characters after entities parsing
  @JsonKey(name: "caption")
  String caption;

  /// Optional. Send Markdown or HTML, if you want Telegram apps to show bold, italic, fixed-width text or inline URLs in the media caption.
  @JsonKey(name: "parse_mode")
  String parseMode;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: "reply_markup")
  InlineKeyboardMarkup replyMarkup;

  /// Optional. Content of the message to be sent instead of the video animation
  @JsonKey(name: "input_message_content")
  InputMessageContent inputMessageContent;

  InlineQueryResultMpeg4Gif(
      {this.type,
      this.id,
      this.mpeg4Url,
      this.mpeg4Width,
      this.mpeg4Height,
      this.mpeg4Duration,
      this.thumbUrl,
      this.title,
      this.caption,
      this.parseMode,
      this.replyMarkup,
      this.inputMessageContent});
  factory InlineQueryResultMpeg4Gif.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultMpeg4GifFromJson(json);

  Map<String, dynamic> toJson() => _$InlineQueryResultMpeg4GifToJson(this);

  String toString() => jsonEncode(toJson());
}
