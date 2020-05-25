// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatPhoto _$ChatPhotoFromJson(Map<String, dynamic> json) {
  return ChatPhoto(
    smallFileId: json['small_file_id'] as String,
    smallFileUniqueId: json['small_file_unique_id'] as String,
    bigFileId: json['big_file_id'] as String,
    bigFileUniqueId: json['big_file_unique_id'] as String,
  );
}

Map<String, dynamic> _$ChatPhotoToJson(ChatPhoto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('small_file_id', instance.smallFileId);
  writeNotNull('small_file_unique_id', instance.smallFileUniqueId);
  writeNotNull('big_file_id', instance.bigFileId);
  writeNotNull('big_file_unique_id', instance.bigFileUniqueId);
  return val;
}
