// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PollOption _$PollOptionFromJson(Map<String, dynamic> json) {
  return PollOption(
    text: json['text'] as String,
    voterCount: json['voter_count'] as int,
  );
}

Map<String, dynamic> _$PollOptionToJson(PollOption instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('text', instance.text);
  writeNotNull('voter_count', instance.voterCount);
  return val;
}
