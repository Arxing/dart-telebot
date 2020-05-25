import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'passport_element_error_files.g.dart';

@JsonSerializable(includeIfNull: false)
class PassportElementErrorFiles {
  /// Error source, must be files
  @JsonKey(name: "source")
  String source;

  /// The section of the user's Telegram Passport which has the issue, one of “utility_bill”, “bank_statement”, “rental_agreement”, “passport_registration”, “temporary_registration”
  @JsonKey(name: "type")
  String type;

  /// List of base64-encoded file hashes
  @JsonKey(name: "file_hashes")
  List<String> fileHashes;

  /// Error message
  @JsonKey(name: "message")
  String message;

  PassportElementErrorFiles(
      {this.source, this.type, this.fileHashes, this.message});
  factory PassportElementErrorFiles.fromJson(Map<String, dynamic> json) =>
      _$PassportElementErrorFilesFromJson(json);

  Map<String, dynamic> toJson() => _$PassportElementErrorFilesToJson(this);

  String toString() => jsonEncode(toJson());
}
