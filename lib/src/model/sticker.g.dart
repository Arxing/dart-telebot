// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sticker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sticker _$StickerFromJson(Map<String, dynamic> json) {
  return Sticker(
    fileId: json['file_id'] as String,
    fileUniqueId: json['file_unique_id'] as String,
    width: json['width'] as int,
    height: json['height'] as int,
    isAnimated: json['is_animated'] as bool,
    thumb: json['thumb'] == null
        ? null
        : PhotoSize.fromJson(json['thumb'] as Map<String, dynamic>),
    emoji: json['emoji'] as String,
    setName: json['set_name'] as String,
    maskPosition: json['mask_position'] == null
        ? null
        : MaskPosition.fromJson(json['mask_position'] as Map<String, dynamic>),
    fileSize: json['file_size'] as int,
  );
}

Map<String, dynamic> _$StickerToJson(Sticker instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('file_id', instance.fileId);
  writeNotNull('file_unique_id', instance.fileUniqueId);
  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  writeNotNull('is_animated', instance.isAnimated);
  writeNotNull('thumb', instance.thumb);
  writeNotNull('emoji', instance.emoji);
  writeNotNull('set_name', instance.setName);
  writeNotNull('mask_position', instance.maskPosition);
  writeNotNull('file_size', instance.fileSize);
  return val;
}
