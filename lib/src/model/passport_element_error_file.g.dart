// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passport_element_error_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PassportElementErrorFile _$PassportElementErrorFileFromJson(
    Map<String, dynamic> json) {
  return PassportElementErrorFile(
    source: json['source'] as String,
    type: json['type'] as String,
    fileHash: json['file_hash'] as String,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$PassportElementErrorFileToJson(
    PassportElementErrorFile instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('source', instance.source);
  writeNotNull('type', instance.type);
  writeNotNull('file_hash', instance.fileHash);
  writeNotNull('message', instance.message);
  return val;
}
