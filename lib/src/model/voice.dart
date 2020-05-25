import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'voice.g.dart';

@JsonSerializable(includeIfNull: false)
class Voice {
  /// Identifier for this file, which can be used to download or reuse the file
  @JsonKey(name: "file_id")
  String fileId;

  /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  @JsonKey(name: "file_unique_id")
  String fileUniqueId;

  /// Duration of the audio in seconds as defined by sender
  @JsonKey(name: "duration")
  int duration;

  /// Optional. MIME type of the file as defined by sender
  @JsonKey(name: "mime_type")
  String mimeType;

  /// Optional. File size
  @JsonKey(name: "file_size")
  int fileSize;

  Voice(
      {this.fileId,
      this.fileUniqueId,
      this.duration,
      this.mimeType,
      this.fileSize});
  factory Voice.fromJson(Map<String, dynamic> json) => _$VoiceFromJson(json);

  Map<String, dynamic> toJson() => _$VoiceToJson(this);

  String toString() => jsonEncode(toJson());
}
