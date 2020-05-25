// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Poll _$PollFromJson(Map<String, dynamic> json) {
  return Poll(
    id: json['id'] as String,
    question: json['question'] as String,
    options: (json['options'] as List)
        ?.map((e) =>
            e == null ? null : PollOption.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    totalVoterCount: json['total_voter_count'] as int,
    isClosed: json['is_closed'] as bool,
    isAnonymous: json['is_anonymous'] as bool,
    type: json['type'] as String,
    allowsMultipleAnswers: json['allows_multiple_answers'] as bool,
    correctOptionId: json['correct_option_id'] as int,
  );
}

Map<String, dynamic> _$PollToJson(Poll instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('question', instance.question);
  writeNotNull('options', instance.options);
  writeNotNull('total_voter_count', instance.totalVoterCount);
  writeNotNull('is_closed', instance.isClosed);
  writeNotNull('is_anonymous', instance.isAnonymous);
  writeNotNull('type', instance.type);
  writeNotNull('allows_multiple_answers', instance.allowsMultipleAnswers);
  writeNotNull('correct_option_id', instance.correctOptionId);
  return val;
}
