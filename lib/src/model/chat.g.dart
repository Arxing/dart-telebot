// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Chat _$ChatFromJson(Map<String, dynamic> json) {
  return Chat(
    id: json['id'] as int,
    type: json['type'] as String,
    title: json['title'] as String,
    username: json['username'] as String,
    first_name: json['first_name'] as String,
    last_name: json['last_name'] as String,
    description: json['description'] as String,
    invite_link: json['invite_link'] as String,
    pinned_message: json['pinned_message'] == null
        ? null
        : Message.fromJson(json['pinned_message'] as Map<String, dynamic>),
    slow_mode_delay: json['slow_mode_delay'] as int,
    sticker_set_name: json['sticker_set_name'] as String,
    can_set_sticker_set: json['can_set_sticker_set'] as bool,
  );
}

Map<String, dynamic> _$ChatToJson(Chat instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'username': instance.username,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'description': instance.description,
      'invite_link': instance.invite_link,
      'pinned_message': instance.pinned_message,
      'slow_mode_delay': instance.slow_mode_delay,
      'sticker_set_name': instance.sticker_set_name,
      'can_set_sticker_set': instance.can_set_sticker_set,
    };
