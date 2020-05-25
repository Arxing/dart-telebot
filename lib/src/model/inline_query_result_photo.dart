import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'inline_query_result_photo.g.dart';

@JsonSerializable(includeIfNull: false)
class InlineQueryResultPhoto {
  /// Type of the result, must be photo
  @JsonKey(name: "type")
  String type;

  /// Unique identifier for this result, 1-64 bytes
  @JsonKey(name: "id")
  String id;

  /// A valid URL of the photo. Photo must be in jpeg format. Photo size must not exceed 5MB
  @JsonKey(name: "photo_url")
  String photoUrl;

  /// URL of the thumbnail for the photo
  @JsonKey(name: "thumb_url")
  String thumbUrl;

  /// Optional. Width of the photo
  @JsonKey(name: "photo_width")
  int photoWidth;

  /// Optional. Height of the photo
  @JsonKey(name: "photo_height")
  int photoHeight;

  /// Optional. Title for the result
  @JsonKey(name: "title")
  String title;

  /// Optional. Short description of the result
  @JsonKey(name: "description")
  String description;

  /// Optional. Caption of the photo to be sent, 0-1024 characters after entities parsing
  @JsonKey(name: "caption")
  String caption;

  /// Optional. Send Markdown or HTML, if you want Telegram apps to show bold, italic, fixed-width text or inline URLs in the media caption.
  @JsonKey(name: "parse_mode")
  String parseMode;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: "reply_markup")
  InlineKeyboardMarkup replyMarkup;

  /// Optional. Content of the message to be sent instead of the photo
  @JsonKey(name: "input_message_content")
  InputMessageContent inputMessageContent;

  InlineQueryResultPhoto(
      {this.type,
      this.id,
      this.photoUrl,
      this.thumbUrl,
      this.photoWidth,
      this.photoHeight,
      this.title,
      this.description,
      this.caption,
      this.parseMode,
      this.replyMarkup,
      this.inputMessageContent});
  factory InlineQueryResultPhoto.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultPhotoFromJson(json);

  Map<String, dynamic> toJson() => _$InlineQueryResultPhotoToJson(this);

  String toString() => jsonEncode(toJson());
}
