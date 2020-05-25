import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'inline_query_result_cached_photo.g.dart';

@JsonSerializable(includeIfNull: false)
class InlineQueryResultCachedPhoto {
  /// Type of the result, must be photo
  @JsonKey(name: "type")
  String type;

  /// Unique identifier for this result, 1-64 bytes
  @JsonKey(name: "id")
  String id;

  /// A valid file identifier of the photo
  @JsonKey(name: "photo_file_id")
  String photoFileId;

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

  InlineQueryResultCachedPhoto(
      {this.type,
      this.id,
      this.photoFileId,
      this.title,
      this.description,
      this.caption,
      this.parseMode,
      this.replyMarkup,
      this.inputMessageContent});
  factory InlineQueryResultCachedPhoto.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultCachedPhotoFromJson(json);

  Map<String, dynamic> toJson() => _$InlineQueryResultCachedPhotoToJson(this);

  String toString() => jsonEncode(toJson());
}
