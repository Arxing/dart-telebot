// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply_keyboard_markup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReplyKeyboardMarkup _$ReplyKeyboardMarkupFromJson(Map<String, dynamic> json) {
  return ReplyKeyboardMarkup(
    keyboard: (json['keyboard'] as List)
        ?.map((e) => (e as List)
            ?.map((e) => e == null
                ? null
                : KeyboardButton.fromJson(e as Map<String, dynamic>))
            ?.toList())
        ?.toList(),
    resizeKeyboard: json['resize_keyboard'] as bool,
    oneTimeKeyboard: json['one_time_keyboard'] as bool,
    selective: json['selective'] as bool,
  );
}

Map<String, dynamic> _$ReplyKeyboardMarkupToJson(ReplyKeyboardMarkup instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('keyboard', instance.keyboard);
  writeNotNull('resize_keyboard', instance.resizeKeyboard);
  writeNotNull('one_time_keyboard', instance.oneTimeKeyboard);
  writeNotNull('selective', instance.selective);
  return val;
}
