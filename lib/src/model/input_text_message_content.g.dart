// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_text_message_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InputTextMessageContent _$InputTextMessageContentFromJson(
    Map<String, dynamic> json) {
  return InputTextMessageContent(
    messageText: json['message_text'] as String,
    parseMode: json['parse_mode'] as String,
    disableWebPagePreview: json['disable_web_page_preview'] as bool,
  );
}

Map<String, dynamic> _$InputTextMessageContentToJson(
    InputTextMessageContent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message_text', instance.messageText);
  writeNotNull('parse_mode', instance.parseMode);
  writeNotNull('disable_web_page_preview', instance.disableWebPagePreview);
  return val;
}
