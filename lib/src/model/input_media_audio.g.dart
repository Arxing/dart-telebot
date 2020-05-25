// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_media_audio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InputMediaAudio _$InputMediaAudioFromJson(Map<String, dynamic> json) {
  return InputMediaAudio(
    type: json['type'] as String,
    media: json['media'] as String,
    thumb: json['thumb'] as String,
    caption: json['caption'] as String,
    parseMode: json['parse_mode'] as String,
    duration: json['duration'] as int,
    performer: json['performer'] as String,
    title: json['title'] as String,
  );
}

Map<String, dynamic> _$InputMediaAudioToJson(InputMediaAudio instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('media', instance.media);
  writeNotNull('thumb', instance.thumb);
  writeNotNull('caption', instance.caption);
  writeNotNull('parse_mode', instance.parseMode);
  writeNotNull('duration', instance.duration);
  writeNotNull('performer', instance.performer);
  writeNotNull('title', instance.title);
  return val;
}
