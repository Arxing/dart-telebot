import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'photo_size.g.dart';

@JsonSerializable(includeIfNull: false)
class PhotoSize {
  /// Identifier for this file, which can be used to download or reuse the file
  @JsonKey(name: "file_id")
  String fileId;

  /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  @JsonKey(name: "file_unique_id")
  String fileUniqueId;

  /// Photo width
  @JsonKey(name: "width")
  int width;

  /// Photo height
  @JsonKey(name: "height")
  int height;

  /// Optional. File size
  @JsonKey(name: "file_size")
  int fileSize;

  PhotoSize(
      {this.fileId, this.fileUniqueId, this.width, this.height, this.fileSize});
  factory PhotoSize.fromJson(Map<String, dynamic> json) =>
      _$PhotoSizeFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoSizeToJson(this);

  String toString() => jsonEncode(toJson());
}
