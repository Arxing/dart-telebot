import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'inline_query_result_venue.g.dart';

@JsonSerializable(includeIfNull: false)
class InlineQueryResultVenue {
  /// Type of the result, must be venue
  @JsonKey(name: "type")
  String type;

  /// Unique identifier for this result, 1-64 Bytes
  @JsonKey(name: "id")
  String id;

  /// Latitude of the venue location in degrees
  @JsonKey(name: "latitude")
  double latitude;

  /// Longitude of the venue location in degrees
  @JsonKey(name: "longitude")
  double longitude;

  /// Title of the venue
  @JsonKey(name: "title")
  String title;

  /// Address of the venue
  @JsonKey(name: "address")
  String address;

  /// Optional. Foursquare identifier of the venue if known
  @JsonKey(name: "foursquare_id")
  String foursquareId;

  /// Optional. Foursquare type of the venue, if known. (For example, “arts_entertainment/default”, “arts_entertainment/aquarium” or “food/icecream”.)
  @JsonKey(name: "foursquare_type")
  String foursquareType;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: "reply_markup")
  InlineKeyboardMarkup replyMarkup;

  /// Optional. Content of the message to be sent instead of the venue
  @JsonKey(name: "input_message_content")
  InputMessageContent inputMessageContent;

  /// Optional. Url of the thumbnail for the result
  @JsonKey(name: "thumb_url")
  String thumbUrl;

  /// Optional. Thumbnail width
  @JsonKey(name: "thumb_width")
  int thumbWidth;

  /// Optional. Thumbnail height
  @JsonKey(name: "thumb_height")
  int thumbHeight;

  InlineQueryResultVenue(
      {this.type,
      this.id,
      this.latitude,
      this.longitude,
      this.title,
      this.address,
      this.foursquareId,
      this.foursquareType,
      this.replyMarkup,
      this.inputMessageContent,
      this.thumbUrl,
      this.thumbWidth,
      this.thumbHeight});
  factory InlineQueryResultVenue.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultVenueFromJson(json);

  Map<String, dynamic> toJson() => _$InlineQueryResultVenueToJson(this);

  String toString() => jsonEncode(toJson());
}
