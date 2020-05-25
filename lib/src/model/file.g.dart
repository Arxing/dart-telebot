// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

File _$FileFromJson(Map<String, dynamic> json) {
  return File(
    fileId: json['file_id'] as String,
    fileUniqueId: json['file_unique_id'] as String,
    fileSize: json['file_size'] as int,
    filePath: json['file_path'] as String,
  );
}

Map<String, dynamic> _$FileToJson(File instance) => <String, dynamic>{
      'file_id': instance.fileId,
      'file_unique_id': instance.fileUniqueId,
      'file_size': instance.fileSize,
      'file_path': instance.filePath,
    };
