// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Document _$DocumentFromJson(Map<String, dynamic> json) {
  return Document(
    fileId: json['file_id'] as String,
    fileUniqueId: json['file_unique_id'] as String,
    thumb: json['thumb'] == null
        ? null
        : PhotoSize.fromJson(json['thumb'] as Map<String, dynamic>),
    fileName: json['file_name'] as String,
    mimeType: json['mime_type'] as String,
    fileSize: json['file_size'] as int,
  );
}

Map<String, dynamic> _$DocumentToJson(Document instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('file_id', instance.fileId);
  writeNotNull('file_unique_id', instance.fileUniqueId);
  writeNotNull('thumb', instance.thumb);
  writeNotNull('file_name', instance.fileName);
  writeNotNull('mime_type', instance.mimeType);
  writeNotNull('file_size', instance.fileSize);
  return val;
}
