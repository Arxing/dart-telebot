// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WebhookInfo _$WebhookInfoFromJson(Map<String, dynamic> json) {
  return WebhookInfo(
    url: json['url'] as String,
    hasCustomCertificate: json['has_custom_certificate'] as bool,
    pendingUpdateCount: json['pending_update_count'] as int,
    lastErrorDate: json['last_error_date'] as int,
    lastErrorMessage: json['last_error_message'] as String,
    maxConnections: json['max_connections'] as int,
    allowedUpdates:
        (json['allowed_updates'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$WebhookInfoToJson(WebhookInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('url', instance.url);
  writeNotNull('has_custom_certificate', instance.hasCustomCertificate);
  writeNotNull('pending_update_count', instance.pendingUpdateCount);
  writeNotNull('last_error_date', instance.lastErrorDate);
  writeNotNull('last_error_message', instance.lastErrorMessage);
  writeNotNull('max_connections', instance.maxConnections);
  writeNotNull('allowed_updates', instance.allowedUpdates);
  return val;
}
