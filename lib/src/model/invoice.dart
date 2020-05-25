import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'invoice.g.dart';

@JsonSerializable(includeIfNull: false)
class Invoice {
  /// Product name
  @JsonKey(name: "title")
  String title;

  /// Product description
  @JsonKey(name: "description")
  String description;

  /// Unique bot deep-linking parameter that can be used to generate this invoice
  @JsonKey(name: "start_parameter")
  String startParameter;

  /// Three-letter ISO 4217 currency code
  @JsonKey(name: "currency")
  String currency;

  /// Total price in the smallest units of the currency (integer, not float/double). For example, for a price of US$ 1.45 pass amount = 145. See the exp parameter in currencies.json, it shows the number of digits past the decimal point for each currency (2 for the majority of currencies).
  @JsonKey(name: "total_amount")
  int totalAmount;

  Invoice(
      {this.title,
      this.description,
      this.startParameter,
      this.currency,
      this.totalAmount});
  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceToJson(this);

  String toString() => jsonEncode(toJson());
}
