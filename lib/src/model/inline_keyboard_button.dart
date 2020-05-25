import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'inline_keyboard_button.g.dart';

@JsonSerializable(includeIfNull: false)
class InlineKeyboardButton {
  /// Label text on the button
  @JsonKey(name: "text")
  String text;

  /// Optional. HTTP or tg:// url to be opened when button is pressed
  @JsonKey(name: "url")
  String url;

  /// Optional. An HTTP URL used to automatically authorize the user. Can be used as a replacement for the Telegram Login Widget.
  @JsonKey(name: "login_url")
  LoginUrl loginUrl;

  /// Optional. Data to be sent in a callback query to the bot when button is pressed, 1-64 bytes
  @JsonKey(name: "callback_data")
  String callbackData;

  /// Optional. If set, pressing the button will prompt the user to select one of their chats, open that chat and insert the bot‘s username and the specified inline query in the input field. Can be empty, in which case just the bot’s username will be inserted.Note: This offers an easy way for users to start using your bot in inline mode when they are currently in a private chat with it. Especially useful when combined with switch_pm… actions – in this case the user will be automatically returned to the chat they switched from, skipping the chat selection screen.
  @JsonKey(name: "switch_inline_query")
  String switchInlineQuery;

  /// Optional. If set, pressing the button will insert the bot‘s username and the specified inline query in the current chat's input field. Can be empty, in which case only the bot’s username will be inserted.This offers a quick way for the user to open your bot in inline mode in the same chat – good for selecting something from multiple options.
  @JsonKey(name: "switch_inline_query_current_chat")
  String switchInlineQueryCurrentChat;

  /// Optional. Description of the game that will be launched when the user presses the button.NOTE: This type of button must always be the first button in the first row.
  @JsonKey(name: "callback_game")
  CallbackGame callbackGame;

  /// Optional. Specify True, to send a Pay button.NOTE: This type of button must always be the first button in the first row.
  @JsonKey(name: "pay")
  bool pay;

  InlineKeyboardButton(
      {this.text,
      this.url,
      this.loginUrl,
      this.callbackData,
      this.switchInlineQuery,
      this.switchInlineQueryCurrentChat,
      this.callbackGame,
      this.pay});
  factory InlineKeyboardButton.fromJson(Map<String, dynamic> json) =>
      _$InlineKeyboardButtonFromJson(json);

  Map<String, dynamic> toJson() => _$InlineKeyboardButtonToJson(this);

  String toString() => jsonEncode(toJson());
}
