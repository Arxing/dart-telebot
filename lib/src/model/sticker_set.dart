import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'sticker_set.g.dart';

@JsonSerializable(includeIfNull: false)
class StickerSet {
  /// Sticker set name
  @JsonKey(name: "name")
  String name;

  /// Sticker set title
  @JsonKey(name: "title")
  String title;

  /// True, if the sticker set contains animated stickers
  @JsonKey(name: "is_animated")
  bool isAnimated;

  /// True, if the sticker set contains masks
  @JsonKey(name: "contains_masks")
  bool containsMasks;

  /// List of all set stickers
  @JsonKey(name: "stickers")
  List<Sticker> stickers;

  StickerSet(
      {this.name,
      this.title,
      this.isAnimated,
      this.containsMasks,
      this.stickers});
  factory StickerSet.fromJson(Map<String, dynamic> json) =>
      _$StickerSetFromJson(json);

  Map<String, dynamic> toJson() => _$StickerSetToJson(this);

  String toString() => jsonEncode(toJson());
}
