import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'inline_query_result_cached_document.g.dart';

@JsonSerializable(includeIfNull: false)
class InlineQueryResultCachedDocument {
  /// Type of the result, must be document
  @JsonKey(name: "type")
  String type;

  /// Unique identifier for this result, 1-64 bytes
  @JsonKey(name: "id")
  String id;

  /// Title for the result
  @JsonKey(name: "title")
  String title;

  /// A valid file identifier for the file
  @JsonKey(name: "document_file_id")
  String documentFileId;

  /// Optional. Short description of the result
  @JsonKey(name: "description")
  String description;

  /// Optional. Caption of the document to be sent, 0-1024 characters after entities parsing
  @JsonKey(name: "caption")
  String caption;

  /// Optional. Send Markdown or HTML, if you want Telegram apps to show bold, italic, fixed-width text or inline URLs in the media caption.
  @JsonKey(name: "parse_mode")
  String parseMode;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: "reply_markup")
  InlineKeyboardMarkup replyMarkup;

  /// Optional. Content of the message to be sent instead of the file
  @JsonKey(name: "input_message_content")
  InputMessageContent inputMessageContent;

  InlineQueryResultCachedDocument(
      {this.type,
      this.id,
      this.title,
      this.documentFileId,
      this.description,
      this.caption,
      this.parseMode,
      this.replyMarkup,
      this.inputMessageContent});
  factory InlineQueryResultCachedDocument.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultCachedDocumentFromJson(json);

  Map<String, dynamic> toJson() =>
      _$InlineQueryResultCachedDocumentToJson(this);

  String toString() => jsonEncode(toJson());
}
