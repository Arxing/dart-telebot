import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'login_url.g.dart';

@JsonSerializable(includeIfNull: false)
class LoginUrl {
  /// An HTTP URL to be opened with user authorization data added to the query string when the button is pressed. If the user refuses to provide authorization data, the original URL without information about the user will be opened. The data added is the same as described in Receiving authorization data.NOTE: You must always check the hash of the received data to verify the authentication and the integrity of the data as described in Checking authorization.
  @JsonKey(name: "url")
  String url;

  /// Optional. New text of the button in forwarded messages.
  @JsonKey(name: "forward_text")
  String forwardText;

  /// Optional. Username of a bot, which will be used for user authorization. See Setting up a bot for more details. If not specified, the current bot's username will be assumed. The url's domain must be the same as the domain linked with the bot. See Linking your domain to the bot for more details.
  @JsonKey(name: "bot_username")
  String botUsername;

  /// Optional. Pass True to request the permission for your bot to send messages to the user.
  @JsonKey(name: "request_write_access")
  bool requestWriteAccess;

  LoginUrl(
      {this.url, this.forwardText, this.botUsername, this.requestWriteAccess});
  factory LoginUrl.fromJson(Map<String, dynamic> json) =>
      _$LoginUrlFromJson(json);

  Map<String, dynamic> toJson() => _$LoginUrlToJson(this);

  String toString() => jsonEncode(toJson());
}
