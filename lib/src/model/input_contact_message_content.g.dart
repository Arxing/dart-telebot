// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_contact_message_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InputContactMessageContent _$InputContactMessageContentFromJson(
    Map<String, dynamic> json) {
  return InputContactMessageContent(
    phoneNumber: json['phone_number'] as String,
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    vcard: json['vcard'] as String,
  );
}

Map<String, dynamic> _$InputContactMessageContentToJson(
    InputContactMessageContent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('phone_number', instance.phoneNumber);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('vcard', instance.vcard);
  return val;
}
