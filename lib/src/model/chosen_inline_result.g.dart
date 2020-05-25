// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chosen_inline_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChosenInlineResult _$ChosenInlineResultFromJson(Map<String, dynamic> json) {
  return ChosenInlineResult(
    resultId: json['result_id'] as String,
    from: json['from'] == null
        ? null
        : User.fromJson(json['from'] as Map<String, dynamic>),
    location: json['location'] == null
        ? null
        : Location.fromJson(json['location'] as Map<String, dynamic>),
    inlineMessageId: json['inline_message_id'] as String,
    query: json['query'] as String,
  );
}

Map<String, dynamic> _$ChosenInlineResultToJson(ChosenInlineResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('result_id', instance.resultId);
  writeNotNull('from', instance.from);
  writeNotNull('location', instance.location);
  writeNotNull('inline_message_id', instance.inlineMessageId);
  writeNotNull('query', instance.query);
  return val;
}
