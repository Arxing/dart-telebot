import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'input_file.g.dart';

@JsonSerializable(includeIfNull: false)
class InputFile {
  InputFile();
  factory InputFile.fromJson(Map<String, dynamic> json) =>
      _$InputFileFromJson(json);

  Map<String, dynamic> toJson() => _$InputFileToJson(this);

  String toString() => jsonEncode(toJson());
}
