import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'poll.g.dart';

@JsonSerializable(includeIfNull: false)
class Poll {
  /// Unique poll identifier
  @JsonKey(name: "id")
  String id;

  /// Poll question, 1-255 characters
  @JsonKey(name: "question")
  String question;

  /// List of poll options
  @JsonKey(name: "options")
  List<PollOption> options;

  /// Total number of users that voted in the poll
  @JsonKey(name: "total_voter_count")
  int totalVoterCount;

  /// True, if the poll is closed
  @JsonKey(name: "is_closed")
  bool isClosed;

  /// True, if the poll is anonymous
  @JsonKey(name: "is_anonymous")
  bool isAnonymous;

  /// Poll type, currently can be “regular” or “quiz”
  @JsonKey(name: "type")
  String type;

  /// True, if the poll allows multiple answers
  @JsonKey(name: "allows_multiple_answers")
  bool allowsMultipleAnswers;

  /// Optional. 0-based identifier of the correct answer option. Available only for polls in the quiz mode, which are closed, or was sent (not forwarded) by the bot or to the private chat with the bot.
  @JsonKey(name: "correct_option_id")
  int correctOptionId;

  Poll(
      {this.id,
      this.question,
      this.options,
      this.totalVoterCount,
      this.isClosed,
      this.isAnonymous,
      this.type,
      this.allowsMultipleAnswers,
      this.correctOptionId});
  factory Poll.fromJson(Map<String, dynamic> json) => _$PollFromJson(json);

  Map<String, dynamic> toJson() => _$PollToJson(this);

  String toString() => jsonEncode(toJson());
}
