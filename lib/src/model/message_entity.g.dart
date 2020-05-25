// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageEntity _$MessageEntityFromJson(Map<String, dynamic> json) {
  return MessageEntity(
    type: json['type'] as String,
    offset: json['offset'] as int,
    length: json['length'] as int,
    url: json['url'] as String,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    language: json['language'] as String,
  );
}

Map<String, dynamic> _$MessageEntityToJson(MessageEntity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('offset', instance.offset);
  writeNotNull('length', instance.length);
  writeNotNull('url', instance.url);
  writeNotNull('user', instance.user);
  writeNotNull('language', instance.language);
  return val;
}
