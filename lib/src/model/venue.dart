import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'venue.g.dart';

@JsonSerializable(includeIfNull: false)
class Venue {
  /// Venue location
  @JsonKey(name: "location")
  Location location;

  /// Name of the venue
  @JsonKey(name: "title")
  String title;

  /// Address of the venue
  @JsonKey(name: "address")
  String address;

  /// Optional. Foursquare identifier of the venue
  @JsonKey(name: "foursquare_id")
  String foursquareId;

  /// Optional. Foursquare type of the venue. (For example, “arts_entertainment/default”, “arts_entertainment/aquarium” or “food/icecream”.)
  @JsonKey(name: "foursquare_type")
  String foursquareType;

  Venue(
      {this.location,
      this.title,
      this.address,
      this.foursquareId,
      this.foursquareType});
  factory Venue.fromJson(Map<String, dynamic> json) => _$VenueFromJson(json);

  Map<String, dynamic> toJson() => _$VenueToJson(this);

  String toString() => jsonEncode(toJson());
}
