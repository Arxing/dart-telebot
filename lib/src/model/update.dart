import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'update.g.dart';

@JsonSerializable(includeIfNull: false)
class Update {
  /// The update‘s unique identifier. Update identifiers start from a certain positive number and increase sequentially. This ID becomes especially handy if you’re using Webhooks, since it allows you to ignore repeated updates or to restore the correct update sequence, should they get out of order. If there are no new updates for at least a week, then identifier of the next update will be chosen randomly instead of sequentially.
  @JsonKey(name: "update_id")
  int updateId;

  /// Optional. New incoming message of any kind — text, photo, sticker, etc.
  @JsonKey(name: "message")
  Message message;

  /// Optional. New version of a message that is known to the bot and was edited
  @JsonKey(name: "edited_message")
  Message editedMessage;

  /// Optional. New incoming channel post of any kind — text, photo, sticker, etc.
  @JsonKey(name: "channel_post")
  Message channelPost;

  /// Optional. New version of a channel post that is known to the bot and was edited
  @JsonKey(name: "edited_channel_post")
  Message editedChannelPost;

  /// Optional. New incoming inline query
  @JsonKey(name: "inline_query")
  InlineQuery inlineQuery;

  /// Optional. The result of an inline query that was chosen by a user and sent to their chat partner. Please see our documentation on the feedback collecting for details on how to enable these updates for your bot.
  @JsonKey(name: "chosen_inline_result")
  ChosenInlineResult chosenInlineResult;

  /// Optional. New incoming callback query
  @JsonKey(name: "callback_query")
  CallbackQuery callbackQuery;

  /// Optional. New incoming shipping query. Only for invoices with flexible price
  @JsonKey(name: "shipping_query")
  ShippingQuery shippingQuery;

  /// Optional. New incoming pre-checkout query. Contains full information about checkout
  @JsonKey(name: "pre_checkout_query")
  PreCheckoutQuery preCheckoutQuery;

  /// Optional. New poll state. Bots receive only updates about stopped polls and polls, which are sent by the bot
  @JsonKey(name: "poll")
  Poll poll;

  /// Optional. A user changed their answer in a non-anonymous poll. Bots receive new votes only in polls that were sent by the bot itself.
  @JsonKey(name: "poll_answer")
  PollAnswer pollAnswer;

  Update(
      {this.updateId,
      this.message,
      this.editedMessage,
      this.channelPost,
      this.editedChannelPost,
      this.inlineQuery,
      this.chosenInlineResult,
      this.callbackQuery,
      this.shippingQuery,
      this.preCheckoutQuery,
      this.poll,
      this.pollAnswer});
  factory Update.fromJson(Map<String, dynamic> json) => _$UpdateFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateToJson(this);

  String toString() => jsonEncode(toJson());
}
