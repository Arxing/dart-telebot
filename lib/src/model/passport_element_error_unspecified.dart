import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'passport_element_error_unspecified.g.dart';

@JsonSerializable(includeIfNull: false)
class PassportElementErrorUnspecified {
  /// Error source, must be unspecified
  @JsonKey(name: "source")
  String source;

  /// Type of element of the user's Telegram Passport which has the issue
  @JsonKey(name: "type")
  String type;

  /// Base64-encoded element hash
  @JsonKey(name: "element_hash")
  String elementHash;

  /// Error message
  @JsonKey(name: "message")
  String message;

  PassportElementErrorUnspecified(
      {this.source, this.type, this.elementHash, this.message});
  factory PassportElementErrorUnspecified.fromJson(Map<String, dynamic> json) =>
      _$PassportElementErrorUnspecifiedFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PassportElementErrorUnspecifiedToJson(this);

  String toString() => jsonEncode(toJson());
}
