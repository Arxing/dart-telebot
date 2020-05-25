// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passport_element_error_data_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PassportElementErrorDataField _$PassportElementErrorDataFieldFromJson(
    Map<String, dynamic> json) {
  return PassportElementErrorDataField(
    source: json['source'] as String,
    type: json['type'] as String,
    fieldName: json['field_name'] as String,
    dataHash: json['data_hash'] as String,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$PassportElementErrorDataFieldToJson(
    PassportElementErrorDataField instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('source', instance.source);
  writeNotNull('type', instance.type);
  writeNotNull('field_name', instance.fieldName);
  writeNotNull('data_hash', instance.dataHash);
  writeNotNull('message', instance.message);
  return val;
}
