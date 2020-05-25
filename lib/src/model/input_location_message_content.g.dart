// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_location_message_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InputLocationMessageContent _$InputLocationMessageContentFromJson(
    Map<String, dynamic> json) {
  return InputLocationMessageContent(
    latitude: (json['latitude'] as num)?.toDouble(),
    longitude: (json['longitude'] as num)?.toDouble(),
    livePeriod: json['live_period'] as int,
  );
}

Map<String, dynamic> _$InputLocationMessageContentToJson(
    InputLocationMessageContent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('latitude', instance.latitude);
  writeNotNull('longitude', instance.longitude);
  writeNotNull('live_period', instance.livePeriod);
  return val;
}
