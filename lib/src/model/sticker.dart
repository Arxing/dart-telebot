import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'sticker.g.dart';

@JsonSerializable(includeIfNull: false)
class Sticker {
  /// Identifier for this file, which can be used to download or reuse the file
  @JsonKey(name: "file_id")
  String fileId;

  /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  @JsonKey(name: "file_unique_id")
  String fileUniqueId;

  /// Sticker width
  @JsonKey(name: "width")
  int width;

  /// Sticker height
  @JsonKey(name: "height")
  int height;

  /// True, if the sticker is animated
  @JsonKey(name: "is_animated")
  bool isAnimated;

  /// Optional. Sticker thumbnail in the .webp or .jpg format
  @JsonKey(name: "thumb")
  PhotoSize thumb;

  /// Optional. Emoji associated with the sticker
  @JsonKey(name: "emoji")
  String emoji;

  /// Optional. Name of the sticker set to which the sticker belongs
  @JsonKey(name: "set_name")
  String setName;

  /// Optional. For mask stickers, the position where the mask should be placed
  @JsonKey(name: "mask_position")
  MaskPosition maskPosition;

  /// Optional. File size
  @JsonKey(name: "file_size")
  int fileSize;

  Sticker(
      {this.fileId,
      this.fileUniqueId,
      this.width,
      this.height,
      this.isAnimated,
      this.thumb,
      this.emoji,
      this.setName,
      this.maskPosition,
      this.fileSize});
  factory Sticker.fromJson(Map<String, dynamic> json) =>
      _$StickerFromJson(json);

  Map<String, dynamic> toJson() => _$StickerToJson(this);

  String toString() => jsonEncode(toJson());
}
