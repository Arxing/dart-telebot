import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'chat.g.dart';

@JsonSerializable(includeIfNull: false)
class Chat {
  /// Unique identifier for this chat. This number may be greater than 32 bits and some programming languages may have difficulty/silent defects in interpreting it. But it is smaller than 52 bits, so a signed 64 bit integer or double-precision float type are safe for storing this identifier.
  @JsonKey(name: "id")
  int id;

  /// Type of chat, can be either “private”, “group”, “supergroup” or “channel”
  @JsonKey(name: "type")
  String type;

  /// Optional. Title, for supergroups, channels and group chats
  @JsonKey(name: "title")
  String title;

  /// Optional. Username, for private chats, supergroups and channels if available
  @JsonKey(name: "username")
  String username;

  /// Optional. First name of the other party in a private chat
  @JsonKey(name: "first_name")
  String firstName;

  /// Optional. Last name of the other party in a private chat
  @JsonKey(name: "last_name")
  String lastName;

  /// Optional. Chat photo. Returned only in getChat.
  @JsonKey(name: "photo")
  ChatPhoto photo;

  /// Optional. Description, for groups, supergroups and channel chats. Returned only in getChat.
  @JsonKey(name: "description")
  String description;

  /// Optional. Chat invite link, for groups, supergroups and channel chats. Each administrator in a chat generates their own invite links, so the bot must first generate the link using exportChatInviteLink. Returned only in getChat.
  @JsonKey(name: "invite_link")
  String inviteLink;

  /// Optional. Pinned message, for groups, supergroups and channels. Returned only in getChat.
  @JsonKey(name: "pinned_message")
  Message pinnedMessage;

  /// Optional. Default chat member permissions, for groups and supergroups. Returned only in getChat.
  @JsonKey(name: "permissions")
  ChatPermissions permissions;

  /// Optional. For supergroups, the minimum allowed delay between consecutive messages sent by each unpriviledged user. Returned only in getChat.
  @JsonKey(name: "slow_mode_delay")
  int slowModeDelay;

  /// Optional. For supergroups, name of group sticker set. Returned only in getChat.
  @JsonKey(name: "sticker_set_name")
  String stickerSetName;

  /// Optional. True, if the bot can change the group sticker set. Returned only in getChat.
  @JsonKey(name: "can_set_sticker_set")
  bool canSetStickerSet;

  Chat(
      {this.id,
      this.type,
      this.title,
      this.username,
      this.firstName,
      this.lastName,
      this.photo,
      this.description,
      this.inviteLink,
      this.pinnedMessage,
      this.permissions,
      this.slowModeDelay,
      this.stickerSetName,
      this.canSetStickerSet});
  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);

  Map<String, dynamic> toJson() => _$ChatToJson(this);

  String toString() => jsonEncode(toJson());
}
