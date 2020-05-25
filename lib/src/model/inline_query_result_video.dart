import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'inline_query_result_video.g.dart';

@JsonSerializable(includeIfNull: false)
class InlineQueryResultVideo {
  /// Type of the result, must be video
  @JsonKey(name: "type")
  String type;

  /// Unique identifier for this result, 1-64 bytes
  @JsonKey(name: "id")
  String id;

  /// A valid URL for the embedded video player or video file
  @JsonKey(name: "video_url")
  String videoUrl;

  /// Mime type of the content of video url, “text/html” or “video/mp4”
  @JsonKey(name: "mime_type")
  String mimeType;

  /// URL of the thumbnail (jpeg only) for the video
  @JsonKey(name: "thumb_url")
  String thumbUrl;

  /// Title for the result
  @JsonKey(name: "title")
  String title;

  /// Optional. Caption of the video to be sent, 0-1024 characters after entities parsing
  @JsonKey(name: "caption")
  String caption;

  /// Optional. Send Markdown or HTML, if you want Telegram apps to show bold, italic, fixed-width text or inline URLs in the media caption.
  @JsonKey(name: "parse_mode")
  String parseMode;

  /// Optional. Video width
  @JsonKey(name: "video_width")
  int videoWidth;

  /// Optional. Video height
  @JsonKey(name: "video_height")
  int videoHeight;

  /// Optional. Video duration in seconds
  @JsonKey(name: "video_duration")
  int videoDuration;

  /// Optional. Short description of the result
  @JsonKey(name: "description")
  String description;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: "reply_markup")
  InlineKeyboardMarkup replyMarkup;

  /// Optional. Content of the message to be sent instead of the video. This field is required if InlineQueryResultVideo is used to send an HTML-page as a result (e.g., a YouTube video).
  @JsonKey(name: "input_message_content")
  InputMessageContent inputMessageContent;

  InlineQueryResultVideo(
      {this.type,
      this.id,
      this.videoUrl,
      this.mimeType,
      this.thumbUrl,
      this.title,
      this.caption,
      this.parseMode,
      this.videoWidth,
      this.videoHeight,
      this.videoDuration,
      this.description,
      this.replyMarkup,
      this.inputMessageContent});
  factory InlineQueryResultVideo.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultVideoFromJson(json);

  Map<String, dynamic> toJson() => _$InlineQueryResultVideoToJson(this);

  String toString() => jsonEncode(toJson());
}
