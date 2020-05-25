import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'inline_query_result_cached_video.g.dart';

@JsonSerializable(includeIfNull: false)
class InlineQueryResultCachedVideo {
  /// Type of the result, must be video
  @JsonKey(name: "type")
  String type;

  /// Unique identifier for this result, 1-64 bytes
  @JsonKey(name: "id")
  String id;

  /// A valid file identifier for the video file
  @JsonKey(name: "video_file_id")
  String videoFileId;

  /// Title for the result
  @JsonKey(name: "title")
  String title;

  /// Optional. Short description of the result
  @JsonKey(name: "description")
  String description;

  /// Optional. Caption of the video to be sent, 0-1024 characters after entities parsing
  @JsonKey(name: "caption")
  String caption;

  /// Optional. Send Markdown or HTML, if you want Telegram apps to show bold, italic, fixed-width text or inline URLs in the media caption.
  @JsonKey(name: "parse_mode")
  String parseMode;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: "reply_markup")
  InlineKeyboardMarkup replyMarkup;

  /// Optional. Content of the message to be sent instead of the video
  @JsonKey(name: "input_message_content")
  InputMessageContent inputMessageContent;

  InlineQueryResultCachedVideo(
      {this.type,
      this.id,
      this.videoFileId,
      this.title,
      this.description,
      this.caption,
      this.parseMode,
      this.replyMarkup,
      this.inputMessageContent});
  factory InlineQueryResultCachedVideo.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultCachedVideoFromJson(json);

  Map<String, dynamic> toJson() => _$InlineQueryResultCachedVideoToJson(this);

  String toString() => jsonEncode(toJson());
}
