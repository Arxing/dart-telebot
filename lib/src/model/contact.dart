import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'contact.g.dart';

@JsonSerializable(includeIfNull: false)
class Contact {
  /// Contact's phone number
  @JsonKey(name: "phone_number")
  String phoneNumber;

  /// Contact's first name
  @JsonKey(name: "first_name")
  String firstName;

  /// Optional. Contact's last name
  @JsonKey(name: "last_name")
  String lastName;

  /// Optional. Contact's user identifier in Telegram
  @JsonKey(name: "user_id")
  int userId;

  /// Optional. Additional data about the contact in the form of a vCard
  @JsonKey(name: "vcard")
  String vcard;

  Contact(
      {this.phoneNumber,
      this.firstName,
      this.lastName,
      this.userId,
      this.vcard});
  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);

  Map<String, dynamic> toJson() => _$ContactToJson(this);

  String toString() => jsonEncode(toJson());
}
