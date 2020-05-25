import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'inline_query_result_cached_mpeg4_gif.g.dart';

@JsonSerializable(includeIfNull: false)
class InlineQueryResultCachedMpeg4Gif {
  /// Type of the result, must be mpeg4_gif
  @JsonKey(name: "type")
  String type;

  /// Unique identifier for this result, 1-64 bytes
  @JsonKey(name: "id")
  String id;

  /// A valid file identifier for the MP4 file
  @JsonKey(name: "mpeg4_file_id")
  String mpeg4FileId;

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

  InlineQueryResultCachedMpeg4Gif(
      {this.type,
      this.id,
      this.mpeg4FileId,
      this.title,
      this.caption,
      this.parseMode,
      this.replyMarkup,
      this.inputMessageContent});
  factory InlineQueryResultCachedMpeg4Gif.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultCachedMpeg4GifFromJson(json);

  Map<String, dynamic> toJson() =>
      _$InlineQueryResultCachedMpeg4GifToJson(this);

  String toString() => jsonEncode(toJson());
}
