import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'chat_member.g.dart';

@JsonSerializable(includeIfNull: false)
class ChatMember {
  /// Information about the user
  @JsonKey(name: "user")
  User user;

  /// The member's status in the chat. Can be “creator”, “administrator”, “member”, “restricted”, “left” or “kicked”
  @JsonKey(name: "status")
  String status;

  /// Optional. Owner and administrators only. Custom title for this user
  @JsonKey(name: "custom_title")
  String customTitle;

  /// Optional. Restricted and kicked only. Date when restrictions will be lifted for this user; unix time
  @JsonKey(name: "until_date")
  int untilDate;

  /// Optional. Administrators only. True, if the bot is allowed to edit administrator privileges of that user
  @JsonKey(name: "can_be_edited")
  bool canBeEdited;

  /// Optional. Administrators only. True, if the administrator can post in the channel; channels only
  @JsonKey(name: "can_post_messages")
  bool canPostMessages;

  /// Optional. Administrators only. True, if the administrator can edit messages of other users and can pin messages; channels only
  @JsonKey(name: "can_edit_messages")
  bool canEditMessages;

  /// Optional. Administrators only. True, if the administrator can delete messages of other users
  @JsonKey(name: "can_delete_messages")
  bool canDeleteMessages;

  /// Optional. Administrators only. True, if the administrator can restrict, ban or unban chat members
  @JsonKey(name: "can_restrict_members")
  bool canRestrictMembers;

  /// Optional. Administrators only. True, if the administrator can add new administrators with a subset of his own privileges or demote administrators that he has promoted, directly or indirectly (promoted by administrators that were appointed by the user)
  @JsonKey(name: "can_promote_members")
  bool canPromoteMembers;

  /// Optional. Administrators and restricted only. True, if the user is allowed to change the chat title, photo and other settings
  @JsonKey(name: "can_change_info")
  bool canChangeInfo;

  /// Optional. Administrators and restricted only. True, if the user is allowed to invite new users to the chat
  @JsonKey(name: "can_invite_users")
  bool canInviteUsers;

  /// Optional. Administrators and restricted only. True, if the user is allowed to pin messages; groups and supergroups only
  @JsonKey(name: "can_pin_messages")
  bool canPinMessages;

  /// Optional. Restricted only. True, if the user is a member of the chat at the moment of the request
  @JsonKey(name: "is_member")
  bool isMember;

  /// Optional. Restricted only. True, if the user is allowed to send text messages, contacts, locations and venues
  @JsonKey(name: "can_send_messages")
  bool canSendMessages;

  /// Optional. Restricted only. True, if the user is allowed to send audios, documents, photos, videos, video notes and voice notes
  @JsonKey(name: "can_send_media_messages")
  bool canSendMediaMessages;

  /// Optional. Restricted only. True, if the user is allowed to send polls
  @JsonKey(name: "can_send_polls")
  bool canSendPolls;

  /// Optional. Restricted only. True, if the user is allowed to send animations, games, stickers and use inline bots
  @JsonKey(name: "can_send_other_messages")
  bool canSendOtherMessages;

  /// Optional. Restricted only. True, if the user is allowed to add web page previews to their messages
  @JsonKey(name: "can_add_web_page_previews")
  bool canAddWebPagePreviews;

  ChatMember(
      {this.user,
      this.status,
      this.customTitle,
      this.untilDate,
      this.canBeEdited,
      this.canPostMessages,
      this.canEditMessages,
      this.canDeleteMessages,
      this.canRestrictMembers,
      this.canPromoteMembers,
      this.canChangeInfo,
      this.canInviteUsers,
      this.canPinMessages,
      this.isMember,
      this.canSendMessages,
      this.canSendMediaMessages,
      this.canSendPolls,
      this.canSendOtherMessages,
      this.canAddWebPagePreviews});
  factory ChatMember.fromJson(Map<String, dynamic> json) =>
      _$ChatMemberFromJson(json);

  Map<String, dynamic> toJson() => _$ChatMemberToJson(this);

  String toString() => jsonEncode(toJson());
}
