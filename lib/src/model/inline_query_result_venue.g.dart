// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query_result_venue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InlineQueryResultVenue _$InlineQueryResultVenueFromJson(
    Map<String, dynamic> json) {
  return InlineQueryResultVenue(
    type: json['type'] as String,
    id: json['id'] as String,
    latitude: (json['latitude'] as num)?.toDouble(),
    longitude: (json['longitude'] as num)?.toDouble(),
    title: json['title'] as String,
    address: json['address'] as String,
    foursquareId: json['foursquare_id'] as String,
    foursquareType: json['foursquare_type'] as String,
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

Map<String, dynamic> _$InlineQueryResultVenueToJson(
    InlineQueryResultVenue instance) {
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
  writeNotNull('address', instance.address);
  writeNotNull('foursquare_id', instance.foursquareId);
  writeNotNull('foursquare_type', instance.foursquareType);
  writeNotNull('reply_markup', instance.replyMarkup);
  writeNotNull('input_message_content', instance.inputMessageContent);
  writeNotNull('thumb_url', instance.thumbUrl);
  writeNotNull('thumb_width', instance.thumbWidth);
  writeNotNull('thumb_height', instance.thumbHeight);
  return val;
}
