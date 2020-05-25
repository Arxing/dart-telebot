import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'chat_photo.g.dart';

@JsonSerializable(includeIfNull: false)
class ChatPhoto {
  /// File identifier of small (160x160) chat photo. This file_id can be used only for photo download and only for as long as the photo is not changed.
  @JsonKey(name: "small_file_id")
  String smallFileId;

  /// Unique file identifier of small (160x160) chat photo, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  @JsonKey(name: "small_file_unique_id")
  String smallFileUniqueId;

  /// File identifier of big (640x640) chat photo. This file_id can be used only for photo download and only for as long as the photo is not changed.
  @JsonKey(name: "big_file_id")
  String bigFileId;

  /// Unique file identifier of big (640x640) chat photo, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  @JsonKey(name: "big_file_unique_id")
  String bigFileUniqueId;

  ChatPhoto(
      {this.smallFileId,
      this.smallFileUniqueId,
      this.bigFileId,
      this.bigFileUniqueId});
  factory ChatPhoto.fromJson(Map<String, dynamic> json) =>
      _$ChatPhotoFromJson(json);

  Map<String, dynamic> toJson() => _$ChatPhotoToJson(this);

  String toString() => jsonEncode(toJson());
}
