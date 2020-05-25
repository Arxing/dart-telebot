import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'audio.g.dart';

@JsonSerializable(includeIfNull: false)
class Audio {
  /// Identifier for this file, which can be used to download or reuse the file
  @JsonKey(name: "file_id")
  String fileId;

  /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  @JsonKey(name: "file_unique_id")
  String fileUniqueId;

  /// Duration of the audio in seconds as defined by sender
  @JsonKey(name: "duration")
  int duration;

  /// Optional. Performer of the audio as defined by sender or by audio tags
  @JsonKey(name: "performer")
  String performer;

  /// Optional. Title of the audio as defined by sender or by audio tags
  @JsonKey(name: "title")
  String title;

  /// Optional. MIME type of the file as defined by sender
  @JsonKey(name: "mime_type")
  String mimeType;

  /// Optional. File size
  @JsonKey(name: "file_size")
  int fileSize;

  /// Optional. Thumbnail of the album cover to which the music file belongs
  @JsonKey(name: "thumb")
  PhotoSize thumb;

  Audio(
      {this.fileId,
      this.fileUniqueId,
      this.duration,
      this.performer,
      this.title,
      this.mimeType,
      this.fileSize,
      this.thumb});
  factory Audio.fromJson(Map<String, dynamic> json) => _$AudioFromJson(json);

  Map<String, dynamic> toJson() => _$AudioToJson(this);

  String toString() => jsonEncode(toJson());
}
