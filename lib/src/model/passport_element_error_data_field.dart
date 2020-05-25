import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'passport_element_error_data_field.g.dart';

@JsonSerializable(includeIfNull: false)
class PassportElementErrorDataField {
  /// Error source, must be data
  @JsonKey(name: "source")
  String source;

  /// The section of the user's Telegram Passport which has the error, one of “personal_details”, “passport”, “driver_license”, “identity_card”, “internal_passport”, “address”
  @JsonKey(name: "type")
  String type;

  /// Name of the data field which has the error
  @JsonKey(name: "field_name")
  String fieldName;

  /// Base64-encoded data hash
  @JsonKey(name: "data_hash")
  String dataHash;

  /// Error message
  @JsonKey(name: "message")
  String message;

  PassportElementErrorDataField(
      {this.source, this.type, this.fieldName, this.dataHash, this.message});
  factory PassportElementErrorDataField.fromJson(Map<String, dynamic> json) =>
      _$PassportElementErrorDataFieldFromJson(json);

  Map<String, dynamic> toJson() => _$PassportElementErrorDataFieldToJson(this);

  String toString() => jsonEncode(toJson());
}
