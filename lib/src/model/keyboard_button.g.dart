// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keyboard_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KeyboardButton _$KeyboardButtonFromJson(Map<String, dynamic> json) {
  return KeyboardButton(
    text: json['text'] as String,
    requestContact: json['request_contact'] as bool,
    requestLocation: json['request_location'] as bool,
    requestPoll: json['request_poll'] == null
        ? null
        : KeyboardButtonPollType.fromJson(
            json['request_poll'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$KeyboardButtonToJson(KeyboardButton instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('text', instance.text);
  writeNotNull('request_contact', instance.requestContact);
  writeNotNull('request_location', instance.requestLocation);
  writeNotNull('request_poll', instance.requestPoll);
  return val;
}
