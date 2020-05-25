import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'passport_element_error_translation_file.g.dart';

@JsonSerializable(includeIfNull: false)
class PassportElementErrorTranslationFile {
  /// Error source, must be translation_file
  @JsonKey(name: "source")
  String source;

  /// Type of element of the user's Telegram Passport which has the issue, one of “passport”, “driver_license”, “identity_card”, “internal_passport”, “utility_bill”, “bank_statement”, “rental_agreement”, “passport_registration”, “temporary_registration”
  @JsonKey(name: "type")
  String type;

  /// Base64-encoded file hash
  @JsonKey(name: "file_hash")
  String fileHash;

  /// Error message
  @JsonKey(name: "message")
  String message;

  PassportElementErrorTranslationFile(
      {this.source, this.type, this.fileHash, this.message});
  factory PassportElementErrorTranslationFile.fromJson(
          Map<String, dynamic> json) =>
      _$PassportElementErrorTranslationFileFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PassportElementErrorTranslationFileToJson(this);

  String toString() => jsonEncode(toJson());
}
