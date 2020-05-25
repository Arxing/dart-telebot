import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'input_venue_message_content.g.dart';

@JsonSerializable(includeIfNull: false)
class InputVenueMessageContent {
  /// Latitude of the venue in degrees
  @JsonKey(name: "latitude")
  double latitude;

  /// Longitude of the venue in degrees
  @JsonKey(name: "longitude")
  double longitude;

  /// Name of the venue
  @JsonKey(name: "title")
  String title;

  /// Address of the venue
  @JsonKey(name: "address")
  String address;

  /// Optional. Foursquare identifier of the venue, if known
  @JsonKey(name: "foursquare_id")
  String foursquareId;

  /// Optional. Foursquare type of the venue, if known. (For example, “arts_entertainment/default”, “arts_entertainment/aquarium” or “food/icecream”.)
  @JsonKey(name: "foursquare_type")
  String foursquareType;

  InputVenueMessageContent(
      {this.latitude,
      this.longitude,
      this.title,
      this.address,
      this.foursquareId,
      this.foursquareType});
  factory InputVenueMessageContent.fromJson(Map<String, dynamic> json) =>
      _$InputVenueMessageContentFromJson(json);

  Map<String, dynamic> toJson() => _$InputVenueMessageContentToJson(this);

  String toString() => jsonEncode(toJson());
}
