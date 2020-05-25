import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'input_media.g.dart';

@JsonSerializable(includeIfNull: false)
class InputMedia {
  InputMedia();
  factory InputMedia.fromJson(Map<String, dynamic> json) =>
      _$InputMediaFromJson(json);

  Map<String, dynamic> toJson() => _$InputMediaToJson(this);

  String toString() => jsonEncode(toJson());
}
