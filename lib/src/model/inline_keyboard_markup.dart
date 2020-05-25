import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'inline_keyboard_markup.g.dart';

@JsonSerializable(includeIfNull: false)
class InlineKeyboardMarkup {
  /// Array of button rows, each represented by an Array of InlineKeyboardButton objects
  @JsonKey(name: "inline_keyboard")
  List<List<InlineKeyboardButton>> inlineKeyboard;

  InlineKeyboardMarkup({this.inlineKeyboard});
  factory InlineKeyboardMarkup.fromJson(Map<String, dynamic> json) =>
      _$InlineKeyboardMarkupFromJson(json);

  Map<String, dynamic> toJson() => _$InlineKeyboardMarkupToJson(this);

  String toString() => jsonEncode(toJson());
}
