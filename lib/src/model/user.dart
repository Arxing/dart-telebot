import 'package:json_annotation/json_annotation.dart';

part 'package:telegram_bot/src/model/user.g.dart';

@JsonSerializable()
class User {
  int id;
  bool is_bot;
  String first_name;
  String last_name;
  String username;
  String language_code;

  User({
    this.id,
    this.is_bot,
    this.first_name,
    this.last_name,
    this.username,
    this.language_code,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
