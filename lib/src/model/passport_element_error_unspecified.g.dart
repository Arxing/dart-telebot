// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passport_element_error_unspecified.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PassportElementErrorUnspecified _$PassportElementErrorUnspecifiedFromJson(
    Map<String, dynamic> json) {
  return PassportElementErrorUnspecified(
    source: json['source'] as String,
    type: json['type'] as String,
    elementHash: json['element_hash'] as String,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$PassportElementErrorUnspecifiedToJson(
    PassportElementErrorUnspecified instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('source', instance.source);
  writeNotNull('type', instance.type);
  writeNotNull('element_hash', instance.elementHash);
  writeNotNull('message', instance.message);
  return val;
}
