// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passport_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PassportData _$PassportDataFromJson(Map<String, dynamic> json) {
  return PassportData(
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : EncryptedPassportElement.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    credentials: json['credentials'] == null
        ? null
        : EncryptedCredentials.fromJson(
            json['credentials'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PassportDataToJson(PassportData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('credentials', instance.credentials);
  return val;
}
