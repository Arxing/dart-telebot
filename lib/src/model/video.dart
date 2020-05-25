import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'video.g.dart';

@JsonSerializable(includeIfNull: false)
class Video {
  /// Identifier for this file, which can be used to download or reuse the file
  @JsonKey(name: "file_id")
  String fileId;

  /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  @JsonKey(name: "file_unique_id")
  String fileUniqueId;

  /// Video width as defined by sender
  @JsonKey(name: "width")
  int width;

  /// Video height as defined by sender
  @JsonKey(name: "height")
  int height;

  /// Duration of the video in seconds as defined by sender
  @JsonKey(name: "duration")
  int duration;

  /// Optional. Video thumbnail
  @JsonKey(name: "thumb")
  PhotoSize thumb;

  /// Optional. Mime type of a file as defined by sender
  @JsonKey(name: "mime_type")
  String mimeType;

  /// Optional. File size
  @JsonKey(name: "file_size")
  int fileSize;

  Video(
      {this.fileId,
      this.fileUniqueId,
      this.width,
      this.height,
      this.duration,
      this.thumb,
      this.mimeType,
      this.fileSize});
  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);

  Map<String, dynamic> toJson() => _$VideoToJson(this);

  String toString() => jsonEncode(toJson());
}
