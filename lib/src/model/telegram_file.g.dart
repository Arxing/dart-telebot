// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telegram_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TelegramFile _$TelegramFileFromJson(Map<String, dynamic> json) {
  return TelegramFile(
    fileId: json['file_id'] as String,
    fileUniqueId: json['file_unique_id'] as String,
    fileSize: json['file_size'] as int,
    filePath: json['file_path'] as String,
  );
}

Map<String, dynamic> _$TelegramFileToJson(TelegramFile instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('file_id', instance.fileId);
  writeNotNull('file_unique_id', instance.fileUniqueId);
  writeNotNull('file_size', instance.fileSize);
  writeNotNull('file_path', instance.filePath);
  return val;
}
