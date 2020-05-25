// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_venue_message_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InputVenueMessageContent _$InputVenueMessageContentFromJson(
    Map<String, dynamic> json) {
  return InputVenueMessageContent(
    latitude: (json['latitude'] as num)?.toDouble(),
    longitude: (json['longitude'] as num)?.toDouble(),
    title: json['title'] as String,
    address: json['address'] as String,
    foursquareId: json['foursquare_id'] as String,
    foursquareType: json['foursquare_type'] as String,
  );
}

Map<String, dynamic> _$InputVenueMessageContentToJson(
    InputVenueMessageContent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('latitude', instance.latitude);
  writeNotNull('longitude', instance.longitude);
  writeNotNull('title', instance.title);
  writeNotNull('address', instance.address);
  writeNotNull('foursquare_id', instance.foursquareId);
  writeNotNull('foursquare_type', instance.foursquareType);
  return val;
}
