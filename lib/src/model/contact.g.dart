// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contact _$ContactFromJson(Map<String, dynamic> json) {
  return Contact(
    phoneNumber: json['phone_number'] as String,
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    userId: json['user_id'] as int,
    vcard: json['vcard'] as String,
  );
}

Map<String, dynamic> _$ContactToJson(Contact instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('phone_number', instance.phoneNumber);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('user_id', instance.userId);
  writeNotNull('vcard', instance.vcard);
  return val;
}
