// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Update _$UpdateFromJson(Map<String, dynamic> json) {
  return Update(
    update_id: json['update_id'] as int,
    message: json['message'] == null
        ? null
        : Message.fromJson(json['message'] as Map<String, dynamic>),
    edited_message: json['edited_message'] == null
        ? null
        : Message.fromJson(json['edited_message'] as Map<String, dynamic>),
    channel_post: json['channel_post'] == null
        ? null
        : Message.fromJson(json['channel_post'] as Map<String, dynamic>),
    edited_channel_post: json['edited_channel_post'] == null
        ? null
        : Message.fromJson(json['edited_channel_post'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UpdateToJson(Update instance) => <String, dynamic>{
      'update_id': instance.update_id,
      'message': instance.message,
      'edited_message': instance.edited_message,
      'channel_post': instance.channel_post,
      'edited_channel_post': instance.edited_channel_post,
    };
