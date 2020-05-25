import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'chat_permissions.g.dart';

@JsonSerializable(includeIfNull: false)
class ChatPermissions {
  /// Optional. True, if the user is allowed to send text messages, contacts, locations and venues
  @JsonKey(name: "can_send_messages")
  bool canSendMessages;

  /// Optional. True, if the user is allowed to send audios, documents, photos, videos, video notes and voice notes, implies can_send_messages
  @JsonKey(name: "can_send_media_messages")
  bool canSendMediaMessages;

  /// Optional. True, if the user is allowed to send polls, implies can_send_messages
  @JsonKey(name: "can_send_polls")
  bool canSendPolls;

  /// Optional. True, if the user is allowed to send animations, games, stickers and use inline bots, implies can_send_media_messages
  @JsonKey(name: "can_send_other_messages")
  bool canSendOtherMessages;

  /// Optional. True, if the user is allowed to add web page previews to their messages, implies can_send_media_messages
  @JsonKey(name: "can_add_web_page_previews")
  bool canAddWebPagePreviews;

  /// Optional. True, if the user is allowed to change the chat title, photo and other settings. Ignored in public supergroups
  @JsonKey(name: "can_change_info")
  bool canChangeInfo;

  /// Optional. True, if the user is allowed to invite new users to the chat
  @JsonKey(name: "can_invite_users")
  bool canInviteUsers;

  /// Optional. True, if the user is allowed to pin messages. Ignored in public supergroups
  @JsonKey(name: "can_pin_messages")
  bool canPinMessages;

  ChatPermissions(
      {this.canSendMessages,
      this.canSendMediaMessages,
      this.canSendPolls,
      this.canSendOtherMessages,
      this.canAddWebPagePreviews,
      this.canChangeInfo,
      this.canInviteUsers,
      this.canPinMessages});
  factory ChatPermissions.fromJson(Map<String, dynamic> json) =>
      _$ChatPermissionsFromJson(json);

  Map<String, dynamic> toJson() => _$ChatPermissionsToJson(this);

  String toString() => jsonEncode(toJson());
}
