// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query_result_game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InlineQueryResultGame _$InlineQueryResultGameFromJson(
    Map<String, dynamic> json) {
  return InlineQueryResultGame(
    type: json['type'] as String,
    id: json['id'] as String,
    gameShortName: json['game_short_name'] as String,
    replyMarkup: json['reply_markup'] == null
        ? null
        : InlineKeyboardMarkup.fromJson(
            json['reply_markup'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InlineQueryResultGameToJson(
    InlineQueryResultGame instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('id', instance.id);
  writeNotNull('game_short_name', instance.gameShortName);
  writeNotNull('reply_markup', instance.replyMarkup);
  return val;
}
