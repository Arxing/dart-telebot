// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query_result_cached_sticker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InlineQueryResultCachedSticker _$InlineQueryResultCachedStickerFromJson(
    Map<String, dynamic> json) {
  return InlineQueryResultCachedSticker(
    type: json['type'] as String,
    id: json['id'] as String,
    stickerFileId: json['sticker_file_id'] as String,
    replyMarkup: json['reply_markup'] == null
        ? null
        : InlineKeyboardMarkup.fromJson(
            json['reply_markup'] as Map<String, dynamic>),
    inputMessageContent: json['input_message_content'] == null
        ? null
        : InputMessageContent.fromJson(
            json['input_message_content'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InlineQueryResultCachedStickerToJson(
    InlineQueryResultCachedSticker instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('id', instance.id);
  writeNotNull('sticker_file_id', instance.stickerFileId);
  writeNotNull('reply_markup', instance.replyMarkup);
  writeNotNull('input_message_content', instance.inputMessageContent);
  return val;
}
