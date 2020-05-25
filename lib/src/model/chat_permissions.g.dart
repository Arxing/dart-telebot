// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_permissions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatPermissions _$ChatPermissionsFromJson(Map<String, dynamic> json) {
  return ChatPermissions(
    canSendMessages: json['can_send_messages'] as bool,
    canSendMediaMessages: json['can_send_media_messages'] as bool,
    canSendPolls: json['can_send_polls'] as bool,
    canSendOtherMessages: json['can_send_other_messages'] as bool,
    canAddWebPagePreviews: json['can_add_web_page_previews'] as bool,
    canChangeInfo: json['can_change_info'] as bool,
    canInviteUsers: json['can_invite_users'] as bool,
    canPinMessages: json['can_pin_messages'] as bool,
  );
}

Map<String, dynamic> _$ChatPermissionsToJson(ChatPermissions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('can_send_messages', instance.canSendMessages);
  writeNotNull('can_send_media_messages', instance.canSendMediaMessages);
  writeNotNull('can_send_polls', instance.canSendPolls);
  writeNotNull('can_send_other_messages', instance.canSendOtherMessages);
  writeNotNull('can_add_web_page_previews', instance.canAddWebPagePreviews);
  writeNotNull('can_change_info', instance.canChangeInfo);
  writeNotNull('can_invite_users', instance.canInviteUsers);
  writeNotNull('can_pin_messages', instance.canPinMessages);
  return val;
}
