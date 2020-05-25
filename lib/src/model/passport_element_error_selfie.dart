import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'passport_element_error_selfie.g.dart';

@JsonSerializable(includeIfNull: false)
class PassportElementErrorSelfie {
  /// Error source, must be selfie
  @JsonKey(name: "source")
  String source;

  /// The section of the user's Telegram Passport which has the issue, one of “passport”, “driver_license”, “identity_card”, “internal_passport”
  @JsonKey(name: "type")
  String type;

  /// Base64-encoded hash of the file with the selfie
  @JsonKey(name: "file_hash")
  String fileHash;

  /// Error message
  @JsonKey(name: "message")
  String message;

  PassportElementErrorSelfie(
      {this.source, this.type, this.fileHash, this.message});
  factory PassportElementErrorSelfie.fromJson(Map<String, dynamic> json) =>
      _$PassportElementErrorSelfieFromJson(json);

  Map<String, dynamic> toJson() => _$PassportElementErrorSelfieToJson(this);

  String toString() => jsonEncode(toJson());
}
