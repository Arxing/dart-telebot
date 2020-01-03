// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) {
  return Message(
    message_id: json['message_id'] as int,
    from: json['from'] == null
        ? null
        : User.fromJson(json['from'] as Map<String, dynamic>),
    date: json['date'] as int,
    chat: json['chat'] == null
        ? null
        : Chat.fromJson(json['chat'] as Map<String, dynamic>),
    forward_from: json['forward_from'] == null
        ? null
        : User.fromJson(json['forward_from'] as Map<String, dynamic>),
    forward_from_chat: json['forward_from_chat'] == null
        ? null
        : Chat.fromJson(json['forward_from_chat'] as Map<String, dynamic>),
    forward_from_message_id: json['forward_from_message_id'] as int,
    forward_signature: json['forward_signature'] as String,
    forward_sender_name: json['forward_sender_name'] as String,
    forward_date: json['forward_date'] as int,
    reply_to_message: json['reply_to_message'] == null
        ? null
        : Message.fromJson(json['reply_to_message'] as Map<String, dynamic>),
    edit_date: json['edit_date'] as int,
    media_group_id: json['media_group_id'] as String,
    author_signature: json['author_signature'] as String,
    text: json['text'] as String,
  );
}

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'message_id': instance.message_id,
      'from': instance.from,
      'date': instance.date,
      'chat': instance.chat,
      'forward_from': instance.forward_from,
      'forward_from_chat': instance.forward_from_chat,
      'forward_from_message_id': instance.forward_from_message_id,
      'forward_signature': instance.forward_signature,
      'forward_sender_name': instance.forward_sender_name,
      'forward_date': instance.forward_date,
      'reply_to_message': instance.reply_to_message,
      'edit_date': instance.edit_date,
      'media_group_id': instance.media_group_id,
      'author_signature': instance.author_signature,
      'text': instance.text,
    };
