// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_high_score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameHighScore _$GameHighScoreFromJson(Map<String, dynamic> json) {
  return GameHighScore(
    position: json['position'] as int,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    score: json['score'] as int,
  );
}

Map<String, dynamic> _$GameHighScoreToJson(GameHighScore instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('position', instance.position);
  writeNotNull('user', instance.user);
  writeNotNull('score', instance.score);
  return val;
}
