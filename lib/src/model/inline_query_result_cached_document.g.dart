// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query_result_cached_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InlineQueryResultCachedDocument _$InlineQueryResultCachedDocumentFromJson(
    Map<String, dynamic> json) {
  return InlineQueryResultCachedDocument(
    type: json['type'] as String,
    id: json['id'] as String,
    title: json['title'] as String,
    documentFileId: json['document_file_id'] as String,
    description: json['description'] as String,
    caption: json['caption'] as String,
    parseMode: json['parse_mode'] as String,
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

Map<String, dynamic> _$InlineQueryResultCachedDocumentToJson(
    InlineQueryResultCachedDocument instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('document_file_id', instance.documentFileId);
  writeNotNull('description', instance.description);
  writeNotNull('caption', instance.caption);
  writeNotNull('parse_mode', instance.parseMode);
  writeNotNull('reply_markup', instance.replyMarkup);
  writeNotNull('input_message_content', instance.inputMessageContent);
  return val;
}
