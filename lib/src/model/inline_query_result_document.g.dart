// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query_result_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InlineQueryResultDocument _$InlineQueryResultDocumentFromJson(
    Map<String, dynamic> json) {
  return InlineQueryResultDocument(
    type: json['type'] as String,
    id: json['id'] as String,
    title: json['title'] as String,
    caption: json['caption'] as String,
    parseMode: json['parse_mode'] as String,
    documentUrl: json['document_url'] as String,
    mimeType: json['mime_type'] as String,
    description: json['description'] as String,
    replyMarkup: json['reply_markup'] == null
        ? null
        : InlineKeyboardMarkup.fromJson(
            json['reply_markup'] as Map<String, dynamic>),
    inputMessageContent: json['input_message_content'] == null
        ? null
        : InputMessageContent.fromJson(
            json['input_message_content'] as Map<String, dynamic>),
    thumbUrl: json['thumb_url'] as String,
    thumbWidth: json['thumb_width'] as int,
    thumbHeight: json['thumb_height'] as int,
  );
}

Map<String, dynamic> _$InlineQueryResultDocumentToJson(
    InlineQueryResultDocument instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('caption', instance.caption);
  writeNotNull('parse_mode', instance.parseMode);
  writeNotNull('document_url', instance.documentUrl);
  writeNotNull('mime_type', instance.mimeType);
  writeNotNull('description', instance.description);
  writeNotNull('reply_markup', instance.replyMarkup);
  writeNotNull('input_message_content', instance.inputMessageContent);
  writeNotNull('thumb_url', instance.thumbUrl);
  writeNotNull('thumb_width', instance.thumbWidth);
  writeNotNull('thumb_height', instance.thumbHeight);
  return val;
}
