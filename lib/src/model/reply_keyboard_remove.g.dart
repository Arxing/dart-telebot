// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply_keyboard_remove.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReplyKeyboardRemove _$ReplyKeyboardRemoveFromJson(Map<String, dynamic> json) {
  return ReplyKeyboardRemove(
    removeKeyboard: json['remove_keyboard'] as bool,
    selective: json['selective'] as bool,
  );
}

Map<String, dynamic> _$ReplyKeyboardRemoveToJson(ReplyKeyboardRemove instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('remove_keyboard', instance.removeKeyboard);
  writeNotNull('selective', instance.selective);
  return val;
}
