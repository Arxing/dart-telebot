import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'telegram_file.g.dart';

@JsonSerializable(includeIfNull: false)
class TelegramFile {
  /// Identifier for this file, which can be used to download or reuse the file
  @JsonKey(name: "file_id")
  String fileId;

  /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  @JsonKey(name: "file_unique_id")
  String fileUniqueId;

  /// Optional. File size, if known
  @JsonKey(name: "file_size")
  int fileSize;

  /// Optional. File path. Use https://api.telegram.org/file/bot<token>/<file_path> to get the file.
  @JsonKey(name: "file_path")
  String filePath;

  TelegramFile({this.fileId, this.fileUniqueId, this.fileSize, this.filePath});
  factory TelegramFile.fromJson(Map<String, dynamic> json) =>
      _$TelegramFileFromJson(json);

  Map<String, dynamic> toJson() => _$TelegramFileToJson(this);

  String toString() => jsonEncode(toJson());
}
