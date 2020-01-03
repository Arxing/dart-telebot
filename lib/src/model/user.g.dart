// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    id: json['id'] as int,
    is_bot: json['is_bot'] as bool,
    first_name: json['first_name'] as String,
    last_name: json['last_name'] as String,
    username: json['username'] as String,
    language_code: json['language_code'] as String,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'is_bot': instance.is_bot,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'username': instance.username,
      'language_code': instance.language_code,
    };
