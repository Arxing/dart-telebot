// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query_result_article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InlineQueryResultArticle _$InlineQueryResultArticleFromJson(
    Map<String, dynamic> json) {
  return InlineQueryResultArticle(
    type: json['type'] as String,
    id: json['id'] as String,
    title: json['title'] as String,
    inputMessageContent: json['input_message_content'] == null
        ? null
        : InputMessageContent.fromJson(
            json['input_message_content'] as Map<String, dynamic>),
    replyMarkup: json['reply_markup'] == null
        ? null
        : InlineKeyboardMarkup.fromJson(
            json['reply_markup'] as Map<String, dynamic>),
    url: json['url'] as String,
    hideUrl: json['hide_url'] as bool,
    description: json['description'] as String,
    thumbUrl: json['thumb_url'] as String,
    thumbWidth: json['thumb_width'] as int,
    thumbHeight: json['thumb_height'] as int,
  );
}

Map<String, dynamic> _$InlineQueryResultArticleToJson(
    InlineQueryResultArticle instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('input_message_content', instance.inputMessageContent);
  writeNotNull('reply_markup', instance.replyMarkup);
  writeNotNull('url', instance.url);
  writeNotNull('hide_url', instance.hideUrl);
  writeNotNull('description', instance.description);
  writeNotNull('thumb_url', instance.thumbUrl);
  writeNotNull('thumb_width', instance.thumbWidth);
  writeNotNull('thumb_height', instance.thumbHeight);
  return val;
}
