// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query_result_audio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InlineQueryResultAudio _$InlineQueryResultAudioFromJson(
    Map<String, dynamic> json) {
  return InlineQueryResultAudio(
    type: json['type'] as String,
    id: json['id'] as String,
    audioUrl: json['audio_url'] as String,
    title: json['title'] as String,
    caption: json['caption'] as String,
    parseMode: json['parse_mode'] as String,
    performer: json['performer'] as String,
    audioDuration: json['audio_duration'] as int,
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

Map<String, dynamic> _$InlineQueryResultAudioToJson(
    InlineQueryResultAudio instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('id', instance.id);
  writeNotNull('audio_url', instance.audioUrl);
  writeNotNull('title', instance.title);
  writeNotNull('caption', instance.caption);
  writeNotNull('parse_mode', instance.parseMode);
  writeNotNull('performer', instance.performer);
  writeNotNull('audio_duration', instance.audioDuration);
  writeNotNull('reply_markup', instance.replyMarkup);
  writeNotNull('input_message_content', instance.inputMessageContent);
  return val;
}
