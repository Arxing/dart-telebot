import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'pre_checkout_query.g.dart';

@JsonSerializable(includeIfNull: false)
class PreCheckoutQuery {
  /// Unique query identifier
  @JsonKey(name: "id")
  String id;

  /// User who sent the query
  @JsonKey(name: "from")
  User from;

  /// Three-letter ISO 4217 currency code
  @JsonKey(name: "currency")
  String currency;

  /// Total price in the smallest units of the currency (integer, not float/double). For example, for a price of US$ 1.45 pass amount = 145. See the exp parameter in currencies.json, it shows the number of digits past the decimal point for each currency (2 for the majority of currencies).
  @JsonKey(name: "total_amount")
  int totalAmount;

  /// Bot specified invoice payload
  @JsonKey(name: "invoice_payload")
  String invoicePayload;

  /// Optional. Identifier of the shipping option chosen by the user
  @JsonKey(name: "shipping_option_id")
  String shippingOptionId;

  /// Optional. Order info provided by the user
  @JsonKey(name: "order_info")
  OrderInfo orderInfo;

  PreCheckoutQuery(
      {this.id,
      this.from,
      this.currency,
      this.totalAmount,
      this.invoicePayload,
      this.shippingOptionId,
      this.orderInfo});
  factory PreCheckoutQuery.fromJson(Map<String, dynamic> json) =>
      _$PreCheckoutQueryFromJson(json);

  Map<String, dynamic> toJson() => _$PreCheckoutQueryToJson(this);

  String toString() => jsonEncode(toJson());
}
