import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'passport_file.g.dart';

@JsonSerializable(includeIfNull: false)
class PassportFile {
  /// Identifier for this file, which can be used to download or reuse the file
  @JsonKey(name: "file_id")
  String fileId;

  /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  @JsonKey(name: "file_unique_id")
  String fileUniqueId;

  /// File size
  @JsonKey(name: "file_size")
  int fileSize;

  /// Unix time when the file was uploaded
  @JsonKey(name: "file_date")
  int fileDate;

  PassportFile({this.fileId, this.fileUniqueId, this.fileSize, this.fileDate});
  factory PassportFile.fromJson(Map<String, dynamic> json) =>
      _$PassportFileFromJson(json);

  Map<String, dynamic> toJson() => _$PassportFileToJson(this);

  String toString() => jsonEncode(toJson());
}
