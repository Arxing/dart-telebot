// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keyboard_button_poll_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KeyboardButtonPollType _$KeyboardButtonPollTypeFromJson(
    Map<String, dynamic> json) {
  return KeyboardButtonPollType(
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$KeyboardButtonPollTypeToJson(
    KeyboardButtonPollType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  return val;
}
