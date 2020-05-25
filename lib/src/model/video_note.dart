import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'video_note.g.dart';

@JsonSerializable(includeIfNull: false)
class VideoNote {
  /// Identifier for this file, which can be used to download or reuse the file
  @JsonKey(name: "file_id")
  String fileId;

  /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  @JsonKey(name: "file_unique_id")
  String fileUniqueId;

  /// Video width and height (diameter of the video message) as defined by sender
  @JsonKey(name: "length")
  int length;

  /// Duration of the video in seconds as defined by sender
  @JsonKey(name: "duration")
  int duration;

  /// Optional. Video thumbnail
  @JsonKey(name: "thumb")
  PhotoSize thumb;

  /// Optional. File size
  @JsonKey(name: "file_size")
  int fileSize;

  VideoNote(
      {this.fileId,
      this.fileUniqueId,
      this.length,
      this.duration,
      this.thumb,
      this.fileSize});
  factory VideoNote.fromJson(Map<String, dynamic> json) =>
      _$VideoNoteFromJson(json);

  Map<String, dynamic> toJson() => _$VideoNoteToJson(this);

  String toString() => jsonEncode(toJson());
}
