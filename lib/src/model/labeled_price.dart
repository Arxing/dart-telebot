import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'labeled_price.g.dart';

@JsonSerializable(includeIfNull: false)
class LabeledPrice {
  /// Portion label
  @JsonKey(name: "label")
  String label;

  /// Price of the product in the smallest units of the currency (integer, not float/double). For example, for a price of US$ 1.45 pass amount = 145. See the exp parameter in currencies.json, it shows the number of digits past the decimal point for each currency (2 for the majority of currencies).
  @JsonKey(name: "amount")
  int amount;

  LabeledPrice({this.label, this.amount});
  factory LabeledPrice.fromJson(Map<String, dynamic> json) =>
      _$LabeledPriceFromJson(json);

  Map<String, dynamic> toJson() => _$LabeledPriceToJson(this);

  String toString() => jsonEncode(toJson());
}
