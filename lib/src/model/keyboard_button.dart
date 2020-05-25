import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'keyboard_button.g.dart';

@JsonSerializable(includeIfNull: false)
class KeyboardButton {
  /// Text of the button. If none of the optional fields are used, it will be sent as a message when the button is pressed
  @JsonKey(name: "text")
  String text;

  /// Optional. If True, the user's phone number will be sent as a contact when the button is pressed. Available in private chats only
  @JsonKey(name: "request_contact")
  bool requestContact;

  /// Optional. If True, the user's current location will be sent when the button is pressed. Available in private chats only
  @JsonKey(name: "request_location")
  bool requestLocation;

  /// Optional. If specified, the user will be asked to create a poll and send it to the bot when the button is pressed. Available in private chats only
  @JsonKey(name: "request_poll")
  KeyboardButtonPollType requestPoll;

  KeyboardButton(
      {this.text, this.requestContact, this.requestLocation, this.requestPoll});
  factory KeyboardButton.fromJson(Map<String, dynamic> json) =>
      _$KeyboardButtonFromJson(json);

  Map<String, dynamic> toJson() => _$KeyboardButtonToJson(this);

  String toString() => jsonEncode(toJson());
}
