import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'animation.g.dart';

@JsonSerializable(includeIfNull: false)
class Animation {
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

  /// Optional. Animation thumbnail as defined by sender
  @JsonKey(name: "thumb")
  PhotoSize thumb;

  /// Optional. Original animation filename as defined by sender
  @JsonKey(name: "file_name")
  String fileName;

  /// Optional. MIME type of the file as defined by sender
  @JsonKey(name: "mime_type")
  String mimeType;

  /// Optional. File size
  @JsonKey(name: "file_size")
  int fileSize;

  Animation(
      {this.fileId,
      this.fileUniqueId,
      this.width,
      this.height,
      this.duration,
      this.thumb,
      this.fileName,
      this.mimeType,
      this.fileSize});
  factory Animation.fromJson(Map<String, dynamic> json) =>
      _$AnimationFromJson(json);

  Map<String, dynamic> toJson() => _$AnimationToJson(this);

  String toString() => jsonEncode(toJson());
}
