// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    id: json['id'] as int,
    isBot: json['is_bot'] as bool,
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    username: json['username'] as String,
    languageCode: json['language_code'] as String,
    canJoinGroups: json['can_join_groups'] as bool,
    canReadAllGroupMessages: json['can_read_all_group_messages'] as bool,
    supportsInlineQueries: json['supports_inline_queries'] as bool,
  );
}

Map<String, dynamic> _$UserToJson(User instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('is_bot', instance.isBot);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('username', instance.username);
  writeNotNull('language_code', instance.languageCode);
  writeNotNull('can_join_groups', instance.canJoinGroups);
  writeNotNull('can_read_all_group_messages', instance.canReadAllGroupMessages);
  writeNotNull('supports_inline_queries', instance.supportsInlineQueries);
  return val;
}
