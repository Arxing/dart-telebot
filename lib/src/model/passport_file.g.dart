// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passport_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PassportFile _$PassportFileFromJson(Map<String, dynamic> json) {
  return PassportFile(
    fileId: json['file_id'] as String,
    fileUniqueId: json['file_unique_id'] as String,
    fileSize: json['file_size'] as int,
    fileDate: json['file_date'] as int,
  );
}

Map<String, dynamic> _$PassportFileToJson(PassportFile instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('file_id', instance.fileId);
  writeNotNull('file_unique_id', instance.fileUniqueId);
  writeNotNull('file_size', instance.fileSize);
  writeNotNull('file_date', instance.fileDate);
  return val;
}
