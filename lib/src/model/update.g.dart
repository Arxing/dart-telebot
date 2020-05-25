// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Update _$UpdateFromJson(Map<String, dynamic> json) {
  return Update(
    updateId: json['update_id'] as int,
    message: json['message'] == null
        ? null
        : Message.fromJson(json['message'] as Map<String, dynamic>),
    editedMessage: json['edited_message'] == null
        ? null
        : Message.fromJson(json['edited_message'] as Map<String, dynamic>),
    channelPost: json['channel_post'] == null
        ? null
        : Message.fromJson(json['channel_post'] as Map<String, dynamic>),
    editedChannelPost: json['edited_channel_post'] == null
        ? null
        : Message.fromJson(json['edited_channel_post'] as Map<String, dynamic>),
    inlineQuery: json['inline_query'] == null
        ? null
        : InlineQuery.fromJson(json['inline_query'] as Map<String, dynamic>),
    chosenInlineResult: json['chosen_inline_result'] == null
        ? null
        : ChosenInlineResult.fromJson(
            json['chosen_inline_result'] as Map<String, dynamic>),
    callbackQuery: json['callback_query'] == null
        ? null
        : CallbackQuery.fromJson(
            json['callback_query'] as Map<String, dynamic>),
    shippingQuery: json['shipping_query'] == null
        ? null
        : ShippingQuery.fromJson(
            json['shipping_query'] as Map<String, dynamic>),
    preCheckoutQuery: json['pre_checkout_query'] == null
        ? null
        : PreCheckoutQuery.fromJson(
            json['pre_checkout_query'] as Map<String, dynamic>),
    poll: json['poll'] == null
        ? null
        : Poll.fromJson(json['poll'] as Map<String, dynamic>),
    pollAnswer: json['poll_answer'] == null
        ? null
        : PollAnswer.fromJson(json['poll_answer'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UpdateToJson(Update instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('update_id', instance.updateId);
  writeNotNull('message', instance.message);
  writeNotNull('edited_message', instance.editedMessage);
  writeNotNull('channel_post', instance.channelPost);
  writeNotNull('edited_channel_post', instance.editedChannelPost);
  writeNotNull('inline_query', instance.inlineQuery);
  writeNotNull('chosen_inline_result', instance.chosenInlineResult);
  writeNotNull('callback_query', instance.callbackQuery);
  writeNotNull('shipping_query', instance.shippingQuery);
  writeNotNull('pre_checkout_query', instance.preCheckoutQuery);
  writeNotNull('poll', instance.poll);
  writeNotNull('poll_answer', instance.pollAnswer);
  return val;
}
