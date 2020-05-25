// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_keyboard_markup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InlineKeyboardMarkup _$InlineKeyboardMarkupFromJson(Map<String, dynamic> json) {
  return InlineKeyboardMarkup(
    inlineKeyboard: (json['inline_keyboard'] as List)
        ?.map((e) => (e as List)
            ?.map((e) => e == null
                ? null
                : InlineKeyboardButton.fromJson(e as Map<String, dynamic>))
            ?.toList())
        ?.toList(),
  );
}

Map<String, dynamic> _$InlineKeyboardMarkupToJson(
    InlineKeyboardMarkup instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('inline_keyboard', instance.inlineKeyboard);
  return val;
}
