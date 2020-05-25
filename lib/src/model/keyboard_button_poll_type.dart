import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'keyboard_button_poll_type.g.dart';

@JsonSerializable(includeIfNull: false)
class KeyboardButtonPollType {
  /// Optional. If quiz is passed, the user will be allowed to create only polls in the quiz mode. If regular is passed, only regular polls will be allowed. Otherwise, the user will be allowed to create a poll of any type.
  @JsonKey(name: "type")
  String type;

  KeyboardButtonPollType({this.type});
  factory KeyboardButtonPollType.fromJson(Map<String, dynamic> json) =>
      _$KeyboardButtonPollTypeFromJson(json);

  Map<String, dynamic> toJson() => _$KeyboardButtonPollTypeToJson(this);

  String toString() => jsonEncode(toJson());
}
