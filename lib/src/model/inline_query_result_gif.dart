import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'inline_query_result_gif.g.dart';

@JsonSerializable(includeIfNull: false)
class InlineQueryResultGif {
  /// Type of the result, must be gif
  @JsonKey(name: "type")
  String type;

  /// Unique identifier for this result, 1-64 bytes
  @JsonKey(name: "id")
  String id;

  /// A valid URL for the GIF file. File size must not exceed 1MB
  @JsonKey(name: "gif_url")
  String gifUrl;

  /// Optional. Width of the GIF
  @JsonKey(name: "gif_width")
  int gifWidth;

  /// Optional. Height of the GIF
  @JsonKey(name: "gif_height")
  int gifHeight;

  /// Optional. Duration of the GIF
  @JsonKey(name: "gif_duration")
  int gifDuration;

  /// URL of the static thumbnail for the result (jpeg or gif)
  @JsonKey(name: "thumb_url")
  String thumbUrl;

  /// Optional. Title for the result
  @JsonKey(name: "title")
  String title;

  /// Optional. Caption of the GIF file to be sent, 0-1024 characters after entities parsing
  @JsonKey(name: "caption")
  String caption;

  /// Optional. Send Markdown or HTML, if you want Telegram apps to show bold, italic, fixed-width text or inline URLs in the media caption.
  @JsonKey(name: "parse_mode")
  String parseMode;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: "reply_markup")
  InlineKeyboardMarkup replyMarkup;

  /// Optional. Content of the message to be sent instead of the GIF animation
  @JsonKey(name: "input_message_content")
  InputMessageContent inputMessageContent;

  InlineQueryResultGif(
      {this.type,
      this.id,
      this.gifUrl,
      this.gifWidth,
      this.gifHeight,
      this.gifDuration,
      this.thumbUrl,
      this.title,
      this.caption,
      this.parseMode,
      this.replyMarkup,
      this.inputMessageContent});
  factory InlineQueryResultGif.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultGifFromJson(json);

  Map<String, dynamic> toJson() => _$InlineQueryResultGifToJson(this);

  String toString() => jsonEncode(toJson());
}
