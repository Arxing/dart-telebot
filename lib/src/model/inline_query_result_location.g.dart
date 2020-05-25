// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query_result_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InlineQueryResultLocation _$InlineQueryResultLocationFromJson(
    Map<String, dynamic> json) {
  return InlineQueryResultLocation(
    type: json['type'] as String,
    id: json['id'] as String,
    latitude: (json['latitude'] as num)?.toDouble(),
    longitude: (json['longitude'] as num)?.toDouble(),
    title: json['title'] as String,
    livePeriod: json['live_period'] as int,
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

Map<String, dynamic> _$InlineQueryResultLocationToJson(
    InlineQueryResultLocation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('id', instance.id);
  writeNotNull('latitude', instance.latitude);
  writeNotNull('longitude', instance.longitude);
  writeNotNull('title', instance.title);
  writeNotNull('live_period', instance.livePeriod);
  writeNotNull('reply_markup', instance.replyMarkup);
  writeNotNull('input_message_content', instance.inputMessageContent);
  writeNotNull('thumb_url', instance.thumbUrl);
  writeNotNull('thumb_width', instance.thumbWidth);
  writeNotNull('thumb_height', instance.thumbHeight);
  return val;
}
