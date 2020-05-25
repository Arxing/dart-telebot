// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'callback_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CallbackQuery _$CallbackQueryFromJson(Map<String, dynamic> json) {
  return CallbackQuery(
    id: json['id'] as String,
    from: json['from'] == null
        ? null
        : User.fromJson(json['from'] as Map<String, dynamic>),
    message: json['message'] == null
        ? null
        : Message.fromJson(json['message'] as Map<String, dynamic>),
    inlineMessageId: json['inline_message_id'] as String,
    chatInstance: json['chat_instance'] as String,
    data: json['data'] as String,
    gameShortName: json['game_short_name'] as String,
  );
}

Map<String, dynamic> _$CallbackQueryToJson(CallbackQuery instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('from', instance.from);
  writeNotNull('message', instance.message);
  writeNotNull('inline_message_id', instance.inlineMessageId);
  writeNotNull('chat_instance', instance.chatInstance);
  writeNotNull('data', instance.data);
  writeNotNull('game_short_name', instance.gameShortName);
  return val;
}
