// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sticker_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StickerSet _$StickerSetFromJson(Map<String, dynamic> json) {
  return StickerSet(
    name: json['name'] as String,
    title: json['title'] as String,
    isAnimated: json['is_animated'] as bool,
    containsMasks: json['contains_masks'] as bool,
    stickers: (json['stickers'] as List)
        ?.map((e) =>
            e == null ? null : Sticker.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$StickerSetToJson(StickerSet instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('title', instance.title);
  writeNotNull('is_animated', instance.isAnimated);
  writeNotNull('contains_masks', instance.containsMasks);
  writeNotNull('stickers', instance.stickers);
  return val;
}
