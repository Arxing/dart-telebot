// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) {
  return Location(
    longitude: (json['longitude'] as num)?.toDouble(),
    latitude: (json['latitude'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$LocationToJson(Location instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('longitude', instance.longitude);
  writeNotNull('latitude', instance.latitude);
  return val;
}
