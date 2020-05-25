// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_keyboard_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InlineKeyboardButton _$InlineKeyboardButtonFromJson(Map<String, dynamic> json) {
  return InlineKeyboardButton(
    text: json['text'] as String,
    url: json['url'] as String,
    loginUrl: json['login_url'] == null
        ? null
        : LoginUrl.fromJson(json['login_url'] as Map<String, dynamic>),
    callbackData: json['callback_data'] as String,
    switchInlineQuery: json['switch_inline_query'] as String,
    switchInlineQueryCurrentChat:
        json['switch_inline_query_current_chat'] as String,
    callbackGame: json['callback_game'] == null
        ? null
        : CallbackGame.fromJson(json['callback_game'] as Map<String, dynamic>),
    pay: json['pay'] as bool,
  );
}

Map<String, dynamic> _$InlineKeyboardButtonToJson(
    InlineKeyboardButton instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('text', instance.text);
  writeNotNull('url', instance.url);
  writeNotNull('login_url', instance.loginUrl);
  writeNotNull('callback_data', instance.callbackData);
  writeNotNull('switch_inline_query', instance.switchInlineQuery);
  writeNotNull('switch_inline_query_current_chat',
      instance.switchInlineQueryCurrentChat);
  writeNotNull('callback_game', instance.callbackGame);
  writeNotNull('pay', instance.pay);
  return val;
}
