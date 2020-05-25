// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatMember _$ChatMemberFromJson(Map<String, dynamic> json) {
  return ChatMember(
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    status: json['status'] as String,
    customTitle: json['custom_title'] as String,
    untilDate: json['until_date'] as int,
    canBeEdited: json['can_be_edited'] as bool,
    canPostMessages: json['can_post_messages'] as bool,
    canEditMessages: json['can_edit_messages'] as bool,
    canDeleteMessages: json['can_delete_messages'] as bool,
    canRestrictMembers: json['can_restrict_members'] as bool,
    canPromoteMembers: json['can_promote_members'] as bool,
    canChangeInfo: json['can_change_info'] as bool,
    canInviteUsers: json['can_invite_users'] as bool,
    canPinMessages: json['can_pin_messages'] as bool,
    isMember: json['is_member'] as bool,
    canSendMessages: json['can_send_messages'] as bool,
    canSendMediaMessages: json['can_send_media_messages'] as bool,
    canSendPolls: json['can_send_polls'] as bool,
    canSendOtherMessages: json['can_send_other_messages'] as bool,
    canAddWebPagePreviews: json['can_add_web_page_previews'] as bool,
  );
}

Map<String, dynamic> _$ChatMemberToJson(ChatMember instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user', instance.user);
  writeNotNull('status', instance.status);
  writeNotNull('custom_title', instance.customTitle);
  writeNotNull('until_date', instance.untilDate);
  writeNotNull('can_be_edited', instance.canBeEdited);
  writeNotNull('can_post_messages', instance.canPostMessages);
  writeNotNull('can_edit_messages', instance.canEditMessages);
  writeNotNull('can_delete_messages', instance.canDeleteMessages);
  writeNotNull('can_restrict_members', instance.canRestrictMembers);
  writeNotNull('can_promote_members', instance.canPromoteMembers);
  writeNotNull('can_change_info', instance.canChangeInfo);
  writeNotNull('can_invite_users', instance.canInviteUsers);
  writeNotNull('can_pin_messages', instance.canPinMessages);
  writeNotNull('is_member', instance.isMember);
  writeNotNull('can_send_messages', instance.canSendMessages);
  writeNotNull('can_send_media_messages', instance.canSendMediaMessages);
  writeNotNull('can_send_polls', instance.canSendPolls);
  writeNotNull('can_send_other_messages', instance.canSendOtherMessages);
  writeNotNull('can_add_web_page_previews', instance.canAddWebPagePreviews);
  return val;
}
