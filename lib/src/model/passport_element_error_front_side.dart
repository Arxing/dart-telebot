import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'passport_element_error_front_side.g.dart';

@JsonSerializable(includeIfNull: false)
class PassportElementErrorFrontSide {
  /// Error source, must be front_side
  @JsonKey(name: "source")
  String source;

  /// The section of the user's Telegram Passport which has the issue, one of “passport”, “driver_license”, “identity_card”, “internal_passport”
  @JsonKey(name: "type")
  String type;

  /// Base64-encoded hash of the file with the front side of the document
  @JsonKey(name: "file_hash")
  String fileHash;

  /// Error message
  @JsonKey(name: "message")
  String message;

  PassportElementErrorFrontSide(
      {this.source, this.type, this.fileHash, this.message});
  factory PassportElementErrorFrontSide.fromJson(Map<String, dynamic> json) =>
      _$PassportElementErrorFrontSideFromJson(json);

  Map<String, dynamic> toJson() => _$PassportElementErrorFrontSideToJson(this);

  String toString() => jsonEncode(toJson());
}
