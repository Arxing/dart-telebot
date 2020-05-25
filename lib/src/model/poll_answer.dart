import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'poll_answer.g.dart';

@JsonSerializable(includeIfNull: false)
class PollAnswer {
  /// Unique poll identifier
  @JsonKey(name: "poll_id")
  String pollId;

  /// The user, who changed the answer to the poll
  @JsonKey(name: "user")
  User user;

  /// 0-based identifiers of answer options, chosen by the user. May be empty if the user retracted their vote.
  @JsonKey(name: "option_ids")
  List<int> optionIds;

  PollAnswer({this.pollId, this.user, this.optionIds});
  factory PollAnswer.fromJson(Map<String, dynamic> json) =>
      _$PollAnswerFromJson(json);

  Map<String, dynamic> toJson() => _$PollAnswerToJson(this);

  String toString() => jsonEncode(toJson());
}
