import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'inline_query_result_article.g.dart';

@JsonSerializable(includeIfNull: false)
class InlineQueryResultArticle {
  /// Type of the result, must be article
  @JsonKey(name: "type")
  String type;

  /// Unique identifier for this result, 1-64 Bytes
  @JsonKey(name: "id")
  String id;

  /// Title of the result
  @JsonKey(name: "title")
  String title;

  /// Content of the message to be sent
  @JsonKey(name: "input_message_content")
  InputMessageContent inputMessageContent;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: "reply_markup")
  InlineKeyboardMarkup replyMarkup;

  /// Optional. URL of the result
  @JsonKey(name: "url")
  String url;

  /// Optional. Pass True, if you don't want the URL to be shown in the message
  @JsonKey(name: "hide_url")
  bool hideUrl;

  /// Optional. Short description of the result
  @JsonKey(name: "description")
  String description;

  /// Optional. Url of the thumbnail for the result
  @JsonKey(name: "thumb_url")
  String thumbUrl;

  /// Optional. Thumbnail width
  @JsonKey(name: "thumb_width")
  int thumbWidth;

  /// Optional. Thumbnail height
  @JsonKey(name: "thumb_height")
  int thumbHeight;

  InlineQueryResultArticle(
      {this.type,
      this.id,
      this.title,
      this.inputMessageContent,
      this.replyMarkup,
      this.url,
      this.hideUrl,
      this.description,
      this.thumbUrl,
      this.thumbWidth,
      this.thumbHeight});
  factory InlineQueryResultArticle.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultArticleFromJson(json);

  Map<String, dynamic> toJson() => _$InlineQueryResultArticleToJson(this);

  String toString() => jsonEncode(toJson());
}
