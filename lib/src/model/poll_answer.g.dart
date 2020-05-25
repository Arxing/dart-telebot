// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PollAnswer _$PollAnswerFromJson(Map<String, dynamic> json) {
  return PollAnswer(
    pollId: json['poll_id'] as String,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    optionIds: (json['option_ids'] as List)?.map((e) => e as int)?.toList(),
  );
}

Map<String, dynamic> _$PollAnswerToJson(PollAnswer instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('poll_id', instance.pollId);
  writeNotNull('user', instance.user);
  writeNotNull('option_ids', instance.optionIds);
  return val;
}
