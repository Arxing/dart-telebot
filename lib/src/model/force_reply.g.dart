// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'force_reply.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForceReply _$ForceReplyFromJson(Map<String, dynamic> json) {
  return ForceReply(
    forceReply: json['force_reply'] as bool,
    selective: json['selective'] as bool,
  );
}

Map<String, dynamic> _$ForceReplyToJson(ForceReply instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('force_reply', instance.forceReply);
  writeNotNull('selective', instance.selective);
  return val;
}
