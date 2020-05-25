import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'input_message_content.g.dart';

@JsonSerializable(includeIfNull: false)
class InputMessageContent {
  InputMessageContent();
  factory InputMessageContent.fromJson(Map<String, dynamic> json) =>
      _$InputMessageContentFromJson(json);

  Map<String, dynamic> toJson() => _$InputMessageContentToJson(this);

  String toString() => jsonEncode(toJson());
}
