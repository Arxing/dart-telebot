import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'inline_query_result_contact.g.dart';

@JsonSerializable(includeIfNull: false)
class InlineQueryResultContact {
  /// Type of the result, must be contact
  @JsonKey(name: "type")
  String type;

  /// Unique identifier for this result, 1-64 Bytes
  @JsonKey(name: "id")
  String id;

  /// Contact's phone number
  @JsonKey(name: "phone_number")
  String phoneNumber;

  /// Contact's first name
  @JsonKey(name: "first_name")
  String firstName;

  /// Optional. Contact's last name
  @JsonKey(name: "last_name")
  String lastName;

  /// Optional. Additional data about the contact in the form of a vCard, 0-2048 bytes
  @JsonKey(name: "vcard")
  String vcard;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: "reply_markup")
  InlineKeyboardMarkup replyMarkup;

  /// Optional. Content of the message to be sent instead of the contact
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

  InlineQueryResultContact(
      {this.type,
      this.id,
      this.phoneNumber,
      this.firstName,
      this.lastName,
      this.vcard,
      this.replyMarkup,
      this.inputMessageContent,
      this.thumbUrl,
      this.thumbWidth,
      this.thumbHeight});
  factory InlineQueryResultContact.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultContactFromJson(json);

  Map<String, dynamic> toJson() => _$InlineQueryResultContactToJson(this);

  String toString() => jsonEncode(toJson());
}
