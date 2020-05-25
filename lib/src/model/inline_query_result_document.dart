import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'inline_query_result_document.g.dart';

@JsonSerializable(includeIfNull: false)
class InlineQueryResultDocument {
  /// Type of the result, must be document
  @JsonKey(name: "type")
  String type;

  /// Unique identifier for this result, 1-64 bytes
  @JsonKey(name: "id")
  String id;

  /// Title for the result
  @JsonKey(name: "title")
  String title;

  /// Optional. Caption of the document to be sent, 0-1024 characters after entities parsing
  @JsonKey(name: "caption")
  String caption;

  /// Optional. Send Markdown or HTML, if you want Telegram apps to show bold, italic, fixed-width text or inline URLs in the media caption.
  @JsonKey(name: "parse_mode")
  String parseMode;

  /// A valid URL for the file
  @JsonKey(name: "document_url")
  String documentUrl;

  /// Mime type of the content of the file, either “application/pdf” or “application/zip”
  @JsonKey(name: "mime_type")
  String mimeType;

  /// Optional. Short description of the result
  @JsonKey(name: "description")
  String description;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: "reply_markup")
  InlineKeyboardMarkup replyMarkup;

  /// Optional. Content of the message to be sent instead of the file
  @JsonKey(name: "input_message_content")
  InputMessageContent inputMessageContent;

  /// Optional. URL of the thumbnail (jpeg only) for the file
  @JsonKey(name: "thumb_url")
  String thumbUrl;

  /// Optional. Thumbnail width
  @JsonKey(name: "thumb_width")
  int thumbWidth;

  /// Optional. Thumbnail height
  @JsonKey(name: "thumb_height")
  int thumbHeight;

  InlineQueryResultDocument(
      {this.type,
      this.id,
      this.title,
      this.caption,
      this.parseMode,
      this.documentUrl,
      this.mimeType,
      this.description,
      this.replyMarkup,
      this.inputMessageContent,
      this.thumbUrl,
      this.thumbWidth,
      this.thumbHeight});
  factory InlineQueryResultDocument.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultDocumentFromJson(json);

  Map<String, dynamic> toJson() => _$InlineQueryResultDocumentToJson(this);

  String toString() => jsonEncode(toJson());
}
