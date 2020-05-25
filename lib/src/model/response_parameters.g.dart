// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseParameters _$ResponseParametersFromJson(Map<String, dynamic> json) {
  return ResponseParameters(
    migrateToChatId: json['migrate_to_chat_id'] as int,
    retryAfter: json['retry_after'] as int,
  );
}

Map<String, dynamic> _$ResponseParametersToJson(ResponseParameters instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('migrate_to_chat_id', instance.migrateToChatId);
  writeNotNull('retry_after', instance.retryAfter);
  return val;
}
