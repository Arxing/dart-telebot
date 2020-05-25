import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'webhook_info.g.dart';

@JsonSerializable(includeIfNull: false)
class WebhookInfo {
  /// Webhook URL, may be empty if webhook is not set up
  @JsonKey(name: "url")
  String url;

  /// True, if a custom certificate was provided for webhook certificate checks
  @JsonKey(name: "has_custom_certificate")
  bool hasCustomCertificate;

  /// Number of updates awaiting delivery
  @JsonKey(name: "pending_update_count")
  int pendingUpdateCount;

  /// Optional. Unix time for the most recent error that happened when trying to deliver an update via webhook
  @JsonKey(name: "last_error_date")
  int lastErrorDate;

  /// Optional. Error message in human-readable format for the most recent error that happened when trying to deliver an update via webhook
  @JsonKey(name: "last_error_message")
  String lastErrorMessage;

  /// Optional. Maximum allowed number of simultaneous HTTPS connections to the webhook for update delivery
  @JsonKey(name: "max_connections")
  int maxConnections;

  /// Optional. A list of update types the bot is subscribed to. Defaults to all update types
  @JsonKey(name: "allowed_updates")
  List<String> allowedUpdates;

  WebhookInfo(
      {this.url,
      this.hasCustomCertificate,
      this.pendingUpdateCount,
      this.lastErrorDate,
      this.lastErrorMessage,
      this.maxConnections,
      this.allowedUpdates});
  factory WebhookInfo.fromJson(Map<String, dynamic> json) =>
      _$WebhookInfoFromJson(json);

  Map<String, dynamic> toJson() => _$WebhookInfoToJson(this);

  String toString() => jsonEncode(toJson());
}
