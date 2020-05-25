// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_media_photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InputMediaPhoto _$InputMediaPhotoFromJson(Map<String, dynamic> json) {
  return InputMediaPhoto(
    type: json['type'] as String,
    media: json['media'] as String,
    caption: json['caption'] as String,
    parseMode: json['parse_mode'] as String,
  );
}

Map<String, dynamic> _$InputMediaPhotoToJson(InputMediaPhoto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('media', instance.media);
  writeNotNull('caption', instance.caption);
  writeNotNull('parse_mode', instance.parseMode);
  return val;
}
