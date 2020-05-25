import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'passport_element_error_file.g.dart';

@JsonSerializable(includeIfNull: false)
class PassportElementErrorFile {
  /// Error source, must be file
  @JsonKey(name: "source")
  String source;

  /// The section of the user's Telegram Passport which has the issue, one of “utility_bill”, “bank_statement”, “rental_agreement”, “passport_registration”, “temporary_registration”
  @JsonKey(name: "type")
  String type;

  /// Base64-encoded file hash
  @JsonKey(name: "file_hash")
  String fileHash;

  /// Error message
  @JsonKey(name: "message")
  String message;

  PassportElementErrorFile(
      {this.source, this.type, this.fileHash, this.message});
  factory PassportElementErrorFile.fromJson(Map<String, dynamic> json) =>
      _$PassportElementErrorFileFromJson(json);

  Map<String, dynamic> toJson() => _$PassportElementErrorFileToJson(this);

  String toString() => jsonEncode(toJson());
}
