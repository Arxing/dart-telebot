// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passport_element_error_translation_files.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PassportElementErrorTranslationFiles
    _$PassportElementErrorTranslationFilesFromJson(Map<String, dynamic> json) {
  return PassportElementErrorTranslationFiles(
    source: json['source'] as String,
    type: json['type'] as String,
    fileHashes:
        (json['file_hashes'] as List)?.map((e) => e as String)?.toList(),
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$PassportElementErrorTranslationFilesToJson(
    PassportElementErrorTranslationFiles instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('source', instance.source);
  writeNotNull('type', instance.type);
  writeNotNull('file_hashes', instance.fileHashes);
  writeNotNull('message', instance.message);
  return val;
}
