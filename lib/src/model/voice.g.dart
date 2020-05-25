// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Voice _$VoiceFromJson(Map<String, dynamic> json) {
  return Voice(
    fileId: json['file_id'] as String,
    fileUniqueId: json['file_unique_id'] as String,
    duration: json['duration'] as int,
    mimeType: json['mime_type'] as String,
    fileSize: json['file_size'] as int,
  );
}

Map<String, dynamic> _$VoiceToJson(Voice instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('file_id', instance.fileId);
  writeNotNull('file_unique_id', instance.fileUniqueId);
  writeNotNull('duration', instance.duration);
  writeNotNull('mime_type', instance.mimeType);
  writeNotNull('file_size', instance.fileSize);
  return val;
}
