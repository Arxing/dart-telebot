import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'document.g.dart';

@JsonSerializable(includeIfNull: false)
class Document {
  /// Identifier for this file, which can be used to download or reuse the file
  @JsonKey(name: "file_id")
  String fileId;

  /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  @JsonKey(name: "file_unique_id")
  String fileUniqueId;

  /// Optional. Document thumbnail as defined by sender
  @JsonKey(name: "thumb")
  PhotoSize thumb;

  /// Optional. Original filename as defined by sender
  @JsonKey(name: "file_name")
  String fileName;

  /// Optional. MIME type of the file as defined by sender
  @JsonKey(name: "mime_type")
  String mimeType;

  /// Optional. File size
  @JsonKey(name: "file_size")
  int fileSize;

  Document(
      {this.fileId,
      this.fileUniqueId,
      this.thumb,
      this.fileName,
      this.mimeType,
      this.fileSize});
  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);

  Map<String, dynamic> toJson() => _$DocumentToJson(this);

  String toString() => jsonEncode(toJson());
}
