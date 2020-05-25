// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query_result_contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InlineQueryResultContact _$InlineQueryResultContactFromJson(
    Map<String, dynamic> json) {
  return InlineQueryResultContact(
    type: json['type'] as String,
    id: json['id'] as String,
    phoneNumber: json['phone_number'] as String,
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    vcard: json['vcard'] as String,
    replyMarkup: json['reply_markup'] == null
        ? null
        : InlineKeyboardMarkup.fromJson(
            json['reply_markup'] as Map<String, dynamic>),
    inputMessageContent: json['input_message_content'] == null
        ? null
        : InputMessageContent.fromJson(
            json['input_message_content'] as Map<String, dynamic>),
    thumbUrl: json['thumb_url'] as String,
    thumbWidth: json['thumb_width'] as int,
    thumbHeight: json['thumb_height'] as int,
  );
}

Map<String, dynamic> _$InlineQueryResultContactToJson(
    InlineQueryResultContact instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('id', instance.id);
  writeNotNull('phone_number', instance.phoneNumber);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('vcard', instance.vcard);
  writeNotNull('reply_markup', instance.replyMarkup);
  writeNotNull('input_message_content', instance.inputMessageContent);
  writeNotNull('thumb_url', instance.thumbUrl);
  writeNotNull('thumb_width', instance.thumbWidth);
  writeNotNull('thumb_height', instance.thumbHeight);
  return val;
}
