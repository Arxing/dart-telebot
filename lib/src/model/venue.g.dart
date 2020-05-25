// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'venue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Venue _$VenueFromJson(Map<String, dynamic> json) {
  return Venue(
    location: json['location'] == null
        ? null
        : Location.fromJson(json['location'] as Map<String, dynamic>),
    title: json['title'] as String,
    address: json['address'] as String,
    foursquareId: json['foursquare_id'] as String,
    foursquareType: json['foursquare_type'] as String,
  );
}

Map<String, dynamic> _$VenueToJson(Venue instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('location', instance.location);
  writeNotNull('title', instance.title);
  writeNotNull('address', instance.address);
  writeNotNull('foursquare_id', instance.foursquareId);
  writeNotNull('foursquare_type', instance.foursquareType);
  return val;
}
