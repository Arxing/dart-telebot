// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query_result_voice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InlineQueryResultVoice _$InlineQueryResultVoiceFromJson(
    Map<String, dynamic> json) {
  return InlineQueryResultVoice(
    type: json['type'] as String,
    id: json['id'] as String,
    voiceUrl: json['voice_url'] as String,
    title: json['title'] as String,
    caption: json['caption'] as String,
    parseMode: json['parse_mode'] as String,
    voiceDuration: json['voice_duration'] as int,
    replyMarkup: json['reply_markup'] == null
        ? null
        : InlineKeyboardMarkup.fromJson(
            json['reply_markup'] as Map<String, dynamic>),
    inputMessageContent: json['input_message_content'] == null
        ? null
        : InputMessageContent.fromJson(
            json['input_message_content'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InlineQueryResultVoiceToJson(
    InlineQueryResultVoice instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('id', instance.id);
  writeNotNull('voice_url', instance.voiceUrl);
  writeNotNull('title', instance.title);
  writeNotNull('caption', instance.caption);
  writeNotNull('parse_mode', instance.parseMode);
  writeNotNull('voice_duration', instance.voiceDuration);
  writeNotNull('reply_markup', instance.replyMarkup);
  writeNotNull('input_message_content', instance.inputMessageContent);
  return val;
}
