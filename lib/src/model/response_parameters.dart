import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'response_parameters.g.dart';

@JsonSerializable(includeIfNull: false)
class ResponseParameters {
  /// Optional. The group has been migrated to a supergroup with the specified identifier. This number may be greater than 32 bits and some programming languages may have difficulty/silent defects in interpreting it. But it is smaller than 52 bits, so a signed 64 bit integer or double-precision float type are safe for storing this identifier.
  @JsonKey(name: "migrate_to_chat_id")
  int migrateToChatId;

  /// Optional. In case of exceeding flood control, the number of seconds left to wait before the request can be repeated
  @JsonKey(name: "retry_after")
  int retryAfter;

  ResponseParameters({this.migrateToChatId, this.retryAfter});
  factory ResponseParameters.fromJson(Map<String, dynamic> json) =>
      _$ResponseParametersFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseParametersToJson(this);

  String toString() => jsonEncode(toJson());
}
