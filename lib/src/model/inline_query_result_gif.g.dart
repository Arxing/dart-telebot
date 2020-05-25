// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query_result_gif.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InlineQueryResultGif _$InlineQueryResultGifFromJson(Map<String, dynamic> json) {
  return InlineQueryResultGif(
    type: json['type'] as String,
    id: json['id'] as String,
    gifUrl: json['gif_url'] as String,
    gifWidth: json['gif_width'] as int,
    gifHeight: json['gif_height'] as int,
    gifDuration: json['gif_duration'] as int,
    thumbUrl: json['thumb_url'] as String,
    title: json['title'] as String,
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

Map<String, dynamic> _$InlineQueryResultGifToJson(
    InlineQueryResultGif instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('id', instance.id);
  writeNotNull('gif_url', instance.gifUrl);
  writeNotNull('gif_width', instance.gifWidth);
  writeNotNull('gif_height', instance.gifHeight);
  writeNotNull('gif_duration', instance.gifDuration);
  writeNotNull('thumb_url', instance.thumbUrl);
  writeNotNull('title', instance.title);
  writeNotNull('caption', instance.caption);
  writeNotNull('parse_mode', instance.parseMode);
  writeNotNull('reply_markup', instance.replyMarkup);
  writeNotNull('input_message_content', instance.inputMessageContent);
  return val;
}
