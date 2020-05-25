import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'passport_element_error_translation_files.g.dart';

@JsonSerializable(includeIfNull: false)
class PassportElementErrorTranslationFiles {
  /// Error source, must be translation_files
  @JsonKey(name: "source")
  String source;

  /// Type of element of the user's Telegram Passport which has the issue, one of “passport”, “driver_license”, “identity_card”, “internal_passport”, “utility_bill”, “bank_statement”, “rental_agreement”, “passport_registration”, “temporary_registration”
  @JsonKey(name: "type")
  String type;

  /// List of base64-encoded file hashes
  @JsonKey(name: "file_hashes")
  List<String> fileHashes;

  /// Error message
  @JsonKey(name: "message")
  String message;

  PassportElementErrorTranslationFiles(
      {this.source, this.type, this.fileHashes, this.message});
  factory PassportElementErrorTranslationFiles.fromJson(
          Map<String, dynamic> json) =>
      _$PassportElementErrorTranslationFilesFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PassportElementErrorTranslationFilesToJson(this);

  String toString() => jsonEncode(toJson());
}
