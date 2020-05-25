// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_url.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginUrl _$LoginUrlFromJson(Map<String, dynamic> json) {
  return LoginUrl(
    url: json['url'] as String,
    forwardText: json['forward_text'] as String,
    botUsername: json['bot_username'] as String,
    requestWriteAccess: json['request_write_access'] as bool,
  );
}

Map<String, dynamic> _$LoginUrlToJson(LoginUrl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('url', instance.url);
  writeNotNull('forward_text', instance.forwardText);
  writeNotNull('bot_username', instance.botUsername);
  writeNotNull('request_write_access', instance.requestWriteAccess);
  return val;
}
