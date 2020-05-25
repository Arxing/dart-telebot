import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'successful_payment.g.dart';

@JsonSerializable(includeIfNull: false)
class SuccessfulPayment {
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

  /// Telegram payment identifier
  @JsonKey(name: "telegram_payment_charge_id")
  String telegramPaymentChargeId;

  /// Provider payment identifier
  @JsonKey(name: "provider_payment_charge_id")
  String providerPaymentChargeId;

  SuccessfulPayment(
      {this.currency,
      this.totalAmount,
      this.invoicePayload,
      this.shippingOptionId,
      this.orderInfo,
      this.telegramPaymentChargeId,
      this.providerPaymentChargeId});
  factory SuccessfulPayment.fromJson(Map<String, dynamic> json) =>
      _$SuccessfulPaymentFromJson(json);

  Map<String, dynamic> toJson() => _$SuccessfulPaymentToJson(this);

  String toString() => jsonEncode(toJson());
}
