import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'passport_element_error.g.dart';

@JsonSerializable(includeIfNull: false)
class PassportElementError {
  PassportElementError();
  factory PassportElementError.fromJson(Map<String, dynamic> json) =>
      _$PassportElementErrorFromJson(json);

  Map<String, dynamic> toJson() => _$PassportElementErrorToJson(this);

  String toString() => jsonEncode(toJson());
}
