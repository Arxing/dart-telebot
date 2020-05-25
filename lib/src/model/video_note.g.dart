// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoNote _$VideoNoteFromJson(Map<String, dynamic> json) {
  return VideoNote(
    fileId: json['file_id'] as String,
    fileUniqueId: json['file_unique_id'] as String,
    length: json['length'] as int,
    duration: json['duration'] as int,
    thumb: json['thumb'] == null
        ? null
        : PhotoSize.fromJson(json['thumb'] as Map<String, dynamic>),
    fileSize: json['file_size'] as int,
  );
}

Map<String, dynamic> _$VideoNoteToJson(VideoNote instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('file_id', instance.fileId);
  writeNotNull('file_unique_id', instance.fileUniqueId);
  writeNotNull('length', instance.length);
  writeNotNull('duration', instance.duration);
  writeNotNull('thumb', instance.thumb);
  writeNotNull('file_size', instance.fileSize);
  return val;
}
