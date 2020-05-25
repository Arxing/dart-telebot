// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_size.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotoSize _$PhotoSizeFromJson(Map<String, dynamic> json) {
  return PhotoSize(
    fileId: json['file_id'] as String,
    fileUniqueId: json['file_unique_id'] as String,
    width: json['width'] as int,
    height: json['height'] as int,
    fileSize: json['file_size'] as int,
  );
}

Map<String, dynamic> _$PhotoSizeToJson(PhotoSize instance) {
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
  writeNotNull('file_size', instance.fileSize);
  return val;
}
