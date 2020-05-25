import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'inline_query_result_location.g.dart';

@JsonSerializable(includeIfNull: false)
class InlineQueryResultLocation {
  /// Type of the result, must be location
  @JsonKey(name: "type")
  String type;

  /// Unique identifier for this result, 1-64 Bytes
  @JsonKey(name: "id")
  String id;

  /// Location latitude in degrees
  @JsonKey(name: "latitude")
  double latitude;

  /// Location longitude in degrees
  @JsonKey(name: "longitude")
  double longitude;

  /// Location title
  @JsonKey(name: "title")
  String title;

  /// Optional. Period in seconds for which the location can be updated, should be between 60 and 86400.
  @JsonKey(name: "live_period")
  int livePeriod;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: "reply_markup")
  InlineKeyboardMarkup replyMarkup;

  /// Optional. Content of the message to be sent instead of the location
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

  InlineQueryResultLocation(
      {this.type,
      this.id,
      this.latitude,
      this.longitude,
      this.title,
      this.livePeriod,
      this.replyMarkup,
      this.inputMessageContent,
      this.thumbUrl,
      this.thumbWidth,
      this.thumbHeight});
  factory InlineQueryResultLocation.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultLocationFromJson(json);

  Map<String, dynamic> toJson() => _$InlineQueryResultLocationToJson(this);

  String toString() => jsonEncode(toJson());
}
