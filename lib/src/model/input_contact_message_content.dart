import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'input_contact_message_content.g.dart';

@JsonSerializable(includeIfNull: false)
class InputContactMessageContent {
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

  InputContactMessageContent(
      {this.phoneNumber, this.firstName, this.lastName, this.vcard});
  factory InputContactMessageContent.fromJson(Map<String, dynamic> json) =>
      _$InputContactMessageContentFromJson(json);

  Map<String, dynamic> toJson() => _$InputContactMessageContentToJson(this);

  String toString() => jsonEncode(toJson());
}
