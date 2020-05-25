import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'game.g.dart';

@JsonSerializable(includeIfNull: false)
class Game {
  /// Title of the game
  @JsonKey(name: "title")
  String title;

  /// Description of the game
  @JsonKey(name: "description")
  String description;

  /// Photo that will be displayed in the game message in chats.
  @JsonKey(name: "photo")
  List<PhotoSize> photo;

  /// Optional. Brief description of the game or high scores included in the game message. Can be automatically edited to include current high scores for the game when the bot calls setGameScore, or manually edited using editMessageText. 0-4096 characters.
  @JsonKey(name: "text")
  String text;

  /// Optional. Special entities that appear in text, such as usernames, URLs, bot commands, etc.
  @JsonKey(name: "text_entities")
  List<MessageEntity> textEntities;

  /// Optional. Animation that will be displayed in the game message in chats. Upload via BotFather
  @JsonKey(name: "animation")
  Animation animation;

  Game(
      {this.title,
      this.description,
      this.photo,
      this.text,
      this.textEntities,
      this.animation});
  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);

  Map<String, dynamic> toJson() => _$GameToJson(this);

  String toString() => jsonEncode(toJson());
}
