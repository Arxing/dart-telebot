// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query_result_mpeg4_gif.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InlineQueryResultMpeg4Gif _$InlineQueryResultMpeg4GifFromJson(
    Map<String, dynamic> json) {
  return InlineQueryResultMpeg4Gif(
    type: json['type'] as String,
    id: json['id'] as String,
    mpeg4Url: json['mpeg4_url'] as String,
    mpeg4Width: json['mpeg4_width'] as int,
    mpeg4Height: json['mpeg4_height'] as int,
    mpeg4Duration: json['mpeg4_duration'] as int,
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

Map<String, dynamic> _$InlineQueryResultMpeg4GifToJson(
    InlineQueryResultMpeg4Gif instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('id', instance.id);
  writeNotNull('mpeg4_url', instance.mpeg4Url);
  writeNotNull('mpeg4_width', instance.mpeg4Width);
  writeNotNull('mpeg4_height', instance.mpeg4Height);
  writeNotNull('mpeg4_duration', instance.mpeg4Duration);
  writeNotNull('thumb_url', instance.thumbUrl);
  writeNotNull('title', instance.title);
  writeNotNull('caption', instance.caption);
  writeNotNull('parse_mode', instance.parseMode);
  writeNotNull('reply_markup', instance.replyMarkup);
  writeNotNull('input_message_content', instance.inputMessageContent);
  return val;
}
