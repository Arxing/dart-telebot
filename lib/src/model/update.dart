import 'package:telegram_bot/telegram_bot.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update.g.dart';

@JsonSerializable()
class Update {
  int update_id;
  Message message;
  Message edited_message;
  Message channel_post;
  Message edited_channel_post;

//  InlineQuery inline_query;
//  ChosenInlineResult chosen_inline_result;
//  CallbackQuery callback_query;
//  ShippingQuery shipping_query;
//  PreCheckoutQuery pre_checkout_query;
//  Poll poll;
  Update({
    this.update_id,
    this.message,
    this.edited_message,
    this.channel_post,
    this.edited_channel_post,
  });

  factory Update.fromJson(Map<String, dynamic> json) => _$UpdateFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateToJson(this);
}
