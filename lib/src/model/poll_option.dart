import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'poll_option.g.dart';

@JsonSerializable(includeIfNull: false)
class PollOption {
  /// Option text, 1-100 characters
  @JsonKey(name: "text")
  String text;

  /// Number of users that voted for this option
  @JsonKey(name: "voter_count")
  int voterCount;

  PollOption({this.text, this.voterCount});
  factory PollOption.fromJson(Map<String, dynamic> json) =>
      _$PollOptionFromJson(json);

  Map<String, dynamic> toJson() => _$PollOptionToJson(this);

  String toString() => jsonEncode(toJson());
}
