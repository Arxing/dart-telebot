// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query_result_video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InlineQueryResultVideo _$InlineQueryResultVideoFromJson(
    Map<String, dynamic> json) {
  return InlineQueryResultVideo(
    type: json['type'] as String,
    id: json['id'] as String,
    videoUrl: json['video_url'] as String,
    mimeType: json['mime_type'] as String,
    thumbUrl: json['thumb_url'] as String,
    title: json['title'] as String,
    caption: json['caption'] as String,
    parseMode: json['parse_mode'] as String,
    videoWidth: json['video_width'] as int,
    videoHeight: json['video_height'] as int,
    videoDuration: json['video_duration'] as int,
    description: json['description'] as String,
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

Map<String, dynamic> _$InlineQueryResultVideoToJson(
    InlineQueryResultVideo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('id', instance.id);
  writeNotNull('video_url', instance.videoUrl);
  writeNotNull('mime_type', instance.mimeType);
  writeNotNull('thumb_url', instance.thumbUrl);
  writeNotNull('title', instance.title);
  writeNotNull('caption', instance.caption);
  writeNotNull('parse_mode', instance.parseMode);
  writeNotNull('video_width', instance.videoWidth);
  writeNotNull('video_height', instance.videoHeight);
  writeNotNull('video_duration', instance.videoDuration);
  writeNotNull('description', instance.description);
  writeNotNull('reply_markup', instance.replyMarkup);
  writeNotNull('input_message_content', instance.inputMessageContent);
  return val;
}
