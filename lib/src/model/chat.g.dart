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
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    photo: json['photo'] == null
        ? null
        : ChatPhoto.fromJson(json['photo'] as Map<String, dynamic>),
    description: json['description'] as String,
    inviteLink: json['invite_link'] as String,
    pinnedMessage: json['pinned_message'] == null
        ? null
        : Message.fromJson(json['pinned_message'] as Map<String, dynamic>),
    permissions: json['permissions'] == null
        ? null
        : ChatPermissions.fromJson(json['permissions'] as Map<String, dynamic>),
    slowModeDelay: json['slow_mode_delay'] as int,
    stickerSetName: json['sticker_set_name'] as String,
    canSetStickerSet: json['can_set_sticker_set'] as bool,
  );
}

Map<String, dynamic> _$ChatToJson(Chat instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('type', instance.type);
  writeNotNull('title', instance.title);
  writeNotNull('username', instance.username);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('photo', instance.photo);
  writeNotNull('description', instance.description);
  writeNotNull('invite_link', instance.inviteLink);
  writeNotNull('pinned_message', instance.pinnedMessage);
  writeNotNull('permissions', instance.permissions);
  writeNotNull('slow_mode_delay', instance.slowModeDelay);
  writeNotNull('sticker_set_name', instance.stickerSetName);
  writeNotNull('can_set_sticker_set', instance.canSetStickerSet);
  return val;
}
