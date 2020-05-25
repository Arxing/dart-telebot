import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'location.g.dart';

@JsonSerializable(includeIfNull: false)
class Location {
  /// Longitude as defined by sender
  @JsonKey(name: "longitude")
  double longitude;

  /// Latitude as defined by sender
  @JsonKey(name: "latitude")
  double latitude;

  Location({this.longitude, this.latitude});
  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);

  String toString() => jsonEncode(toJson());
}
