import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'input_location_message_content.g.dart';

@JsonSerializable(includeIfNull: false)
class InputLocationMessageContent {
  /// Latitude of the location in degrees
  @JsonKey(name: "latitude")
  double latitude;

  /// Longitude of the location in degrees
  @JsonKey(name: "longitude")
  double longitude;

  /// Optional. Period in seconds for which the location can be updated, should be between 60 and 86400.
  @JsonKey(name: "live_period")
  int livePeriod;

  InputLocationMessageContent({this.latitude, this.longitude, this.livePeriod});
  factory InputLocationMessageContent.fromJson(Map<String, dynamic> json) =>
      _$InputLocationMessageContentFromJson(json);

  Map<String, dynamic> toJson() => _$InputLocationMessageContentToJson(this);

  String toString() => jsonEncode(toJson());
}
