import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'callback_game.g.dart';

@JsonSerializable(includeIfNull: false)
class CallbackGame {
  CallbackGame();
  factory CallbackGame.fromJson(Map<String, dynamic> json) =>
      _$CallbackGameFromJson(json);

  Map<String, dynamic> toJson() => _$CallbackGameToJson(this);

  String toString() => jsonEncode(toJson());
}
