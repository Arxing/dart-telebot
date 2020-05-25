import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'inline_query_result_cached_gif.g.dart';

@JsonSerializable(includeIfNull: false)
class InlineQueryResultCachedGif {
  /// Type of the result, must be gif
  @JsonKey(name: "type")
  String type;

  /// Unique identifier for this result, 1-64 bytes
  @JsonKey(name: "id")
  String id;

  /// A valid file identifier for the GIF file
  @JsonKey(name: "gif_file_id")
  String gifFileId;

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

  InlineQueryResultCachedGif(
      {this.type,
      this.id,
      this.gifFileId,
      this.title,
      this.caption,
      this.parseMode,
      this.replyMarkup,
      this.inputMessageContent});
  factory InlineQueryResultCachedGif.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultCachedGifFromJson(json);

  Map<String, dynamic> toJson() => _$InlineQueryResultCachedGifToJson(this);

  String toString() => jsonEncode(toJson());
}
