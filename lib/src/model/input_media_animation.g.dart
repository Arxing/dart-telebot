// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_media_animation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InputMediaAnimation _$InputMediaAnimationFromJson(Map<String, dynamic> json) {
  return InputMediaAnimation(
    type: json['type'] as String,
    media: json['media'] as String,
    thumb: json['thumb'] as String,
    caption: json['caption'] as String,
    parseMode: json['parse_mode'] as String,
    width: json['width'] as int,
    height: json['height'] as int,
    duration: json['duration'] as int,
  );
}

Map<String, dynamic> _$InputMediaAnimationToJson(InputMediaAnimation instance) {
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
  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  writeNotNull('duration', instance.duration);
  return val;
}
