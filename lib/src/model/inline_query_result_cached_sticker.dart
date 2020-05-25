import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'inline_query_result_cached_sticker.g.dart';

@JsonSerializable(includeIfNull: false)
class InlineQueryResultCachedSticker {
  /// Type of the result, must be sticker
  @JsonKey(name: "type")
  String type;

  /// Unique identifier for this result, 1-64 bytes
  @JsonKey(name: "id")
  String id;

  /// A valid file identifier of the sticker
  @JsonKey(name: "sticker_file_id")
  String stickerFileId;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: "reply_markup")
  InlineKeyboardMarkup replyMarkup;

  /// Optional. Content of the message to be sent instead of the sticker
  @JsonKey(name: "input_message_content")
  InputMessageContent inputMessageContent;

  InlineQueryResultCachedSticker(
      {this.type,
      this.id,
      this.stickerFileId,
      this.replyMarkup,
      this.inputMessageContent});
  factory InlineQueryResultCachedSticker.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultCachedStickerFromJson(json);

  Map<String, dynamic> toJson() => _$InlineQueryResultCachedStickerToJson(this);

  String toString() => jsonEncode(toJson());
}
