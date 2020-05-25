import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'game_high_score.g.dart';

@JsonSerializable(includeIfNull: false)
class GameHighScore {
  /// Position in high score table for the game
  @JsonKey(name: "position")
  int position;

  /// User
  @JsonKey(name: "user")
  User user;

  /// Score
  @JsonKey(name: "score")
  int score;

  GameHighScore({this.position, this.user, this.score});
  factory GameHighScore.fromJson(Map<String, dynamic> json) =>
      _$GameHighScoreFromJson(json);

  Map<String, dynamic> toJson() => _$GameHighScoreToJson(this);

  String toString() => jsonEncode(toJson());
}
