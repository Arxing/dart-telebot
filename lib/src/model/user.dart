import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'user.g.dart';

@JsonSerializable(includeIfNull: false)
class User {
  /// Unique identifier for this user or bot
  @JsonKey(name: "id")
  int id;

  /// True, if this user is a bot
  @JsonKey(name: "is_bot")
  bool isBot;

  /// User‘s or bot’s first name
  @JsonKey(name: "first_name")
  String firstName;

  /// Optional. User‘s or bot’s last name
  @JsonKey(name: "last_name")
  String lastName;

  /// Optional. User‘s or bot’s username
  @JsonKey(name: "username")
  String username;

  /// Optional. IETF language tag of the user's language
  @JsonKey(name: "language_code")
  String languageCode;

  /// Optional. True, if the bot can be invited to groups. Returned only in getMe.
  @JsonKey(name: "can_join_groups")
  bool canJoinGroups;

  /// Optional. True, if privacy mode is disabled for the bot. Returned only in getMe.
  @JsonKey(name: "can_read_all_group_messages")
  bool canReadAllGroupMessages;

  /// Optional. True, if the bot supports inline queries. Returned only in getMe.
  @JsonKey(name: "supports_inline_queries")
  bool supportsInlineQueries;

  User(
      {this.id,
      this.isBot,
      this.firstName,
      this.lastName,
      this.username,
      this.languageCode,
      this.canJoinGroups,
      this.canReadAllGroupMessages,
      this.supportsInlineQueries});
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  String toString() => jsonEncode(toJson());
}
