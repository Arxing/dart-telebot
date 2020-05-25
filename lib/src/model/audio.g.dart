// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Audio _$AudioFromJson(Map<String, dynamic> json) {
  return Audio(
    fileId: json['file_id'] as String,
    fileUniqueId: json['file_unique_id'] as String,
    duration: json['duration'] as int,
    performer: json['performer'] as String,
    title: json['title'] as String,
    mimeType: json['mime_type'] as String,
    fileSize: json['file_size'] as int,
    thumb: json['thumb'] == null
        ? null
        : PhotoSize.fromJson(json['thumb'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AudioToJson(Audio instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('file_id', instance.fileId);
  writeNotNull('file_unique_id', instance.fileUniqueId);
  writeNotNull('duration', instance.duration);
  writeNotNull('performer', instance.performer);
  writeNotNull('title', instance.title);
  writeNotNull('mime_type', instance.mimeType);
  writeNotNull('file_size', instance.fileSize);
  writeNotNull('thumb', instance.thumb);
  return val;
}
