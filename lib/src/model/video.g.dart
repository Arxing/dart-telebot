// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Video _$VideoFromJson(Map<String, dynamic> json) {
  return Video(
    fileId: json['file_id'] as String,
    fileUniqueId: json['file_unique_id'] as String,
    width: json['width'] as int,
    height: json['height'] as int,
    duration: json['duration'] as int,
    thumb: json['thumb'] == null
        ? null
        : PhotoSize.fromJson(json['thumb'] as Map<String, dynamic>),
    mimeType: json['mime_type'] as String,
    fileSize: json['file_size'] as int,
  );
}

Map<String, dynamic> _$VideoToJson(Video instance) {
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
  writeNotNull('mime_type', instance.mimeType);
  writeNotNull('file_size', instance.fileSize);
  return val;
}
