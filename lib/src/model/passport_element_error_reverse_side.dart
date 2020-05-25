import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'passport_element_error_reverse_side.g.dart';

@JsonSerializable(includeIfNull: false)
class PassportElementErrorReverseSide {
  /// Error source, must be reverse_side
  @JsonKey(name: "source")
  String source;

  /// The section of the user's Telegram Passport which has the issue, one of “driver_license”, “identity_card”
  @JsonKey(name: "type")
  String type;

  /// Base64-encoded hash of the file with the reverse side of the document
  @JsonKey(name: "file_hash")
  String fileHash;

  /// Error message
  @JsonKey(name: "message")
  String message;

  PassportElementErrorReverseSide(
      {this.source, this.type, this.fileHash, this.message});
  factory PassportElementErrorReverseSide.fromJson(Map<String, dynamic> json) =>
      _$PassportElementErrorReverseSideFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PassportElementErrorReverseSideToJson(this);

  String toString() => jsonEncode(toJson());
}
