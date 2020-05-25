// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_passport_element.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EncryptedPassportElement _$EncryptedPassportElementFromJson(
    Map<String, dynamic> json) {
  return EncryptedPassportElement(
    type: json['type'] as String,
    data: json['data'] as String,
    phoneNumber: json['phone_number'] as String,
    email: json['email'] as String,
    files: (json['files'] as List)
        ?.map((e) =>
            e == null ? null : PassportFile.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    frontSide: json['front_side'] == null
        ? null
        : PassportFile.fromJson(json['front_side'] as Map<String, dynamic>),
    reverseSide: json['reverse_side'] == null
        ? null
        : PassportFile.fromJson(json['reverse_side'] as Map<String, dynamic>),
    selfie: json['selfie'] == null
        ? null
        : PassportFile.fromJson(json['selfie'] as Map<String, dynamic>),
    translation: (json['translation'] as List)
        ?.map((e) =>
            e == null ? null : PassportFile.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    hash: json['hash'] as String,
  );
}

Map<String, dynamic> _$EncryptedPassportElementToJson(
    EncryptedPassportElement instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('data', instance.data);
  writeNotNull('phone_number', instance.phoneNumber);
  writeNotNull('email', instance.email);
  writeNotNull('files', instance.files);
  writeNotNull('front_side', instance.frontSide);
  writeNotNull('reverse_side', instance.reverseSide);
  writeNotNull('selfie', instance.selfie);
  writeNotNull('translation', instance.translation);
  writeNotNull('hash', instance.hash);
  return val;
}
