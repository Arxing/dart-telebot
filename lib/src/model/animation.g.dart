// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Animation _$AnimationFromJson(Map<String, dynamic> json) {
  return Animation(
    fileId: json['file_id'] as String,
    fileUniqueId: json['file_unique_id'] as String,
    width: json['width'] as int,
    height: json['height'] as int,
    duration: json['duration'] as int,
    thumb: json['thumb'] == null
        ? null
        : PhotoSize.fromJson(json['thumb'] as Map<String, dynamic>),
    fileName: json['file_name'] as String,
    mimeType: json['mime_type'] as String,
    fileSize: json['file_size'] as int,
  );
}

Map<String, dynamic> _$AnimationToJson(Animation instance) {
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
  writeNotNull('duration', instance.duration);
  writeNotNull('thumb', instance.thumb);
  writeNotNull('file_name', instance.fileName);
  writeNotNull('mime_type', instance.mimeType);
  writeNotNull('file_size', instance.fileSize);
  return val;
}
