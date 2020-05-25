// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_credentials.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EncryptedCredentials _$EncryptedCredentialsFromJson(Map<String, dynamic> json) {
  return EncryptedCredentials(
    data: json['data'] as String,
    hash: json['hash'] as String,
    secret: json['secret'] as String,
  );
}

Map<String, dynamic> _$EncryptedCredentialsToJson(
    EncryptedCredentials instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('hash', instance.hash);
  writeNotNull('secret', instance.secret);
  return val;
}
