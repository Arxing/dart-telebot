// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_media_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InputMediaDocument _$InputMediaDocumentFromJson(Map<String, dynamic> json) {
  return InputMediaDocument(
    type: json['type'] as String,
    media: json['media'] as String,
    thumb: json['thumb'] as String,
    caption: json['caption'] as String,
    parseMode: json['parse_mode'] as String,
  );
}

Map<String, dynamic> _$InputMediaDocumentToJson(InputMediaDocument instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('media', instance.media);
  writeNotNull('thumb', instance.thumb);
  writeNotNull('caption', instance.caption);
  writeNotNull('parse_mode', instance.parseMode);
  return val;
}
