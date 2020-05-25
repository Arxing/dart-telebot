// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'successful_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuccessfulPayment _$SuccessfulPaymentFromJson(Map<String, dynamic> json) {
  return SuccessfulPayment(
    currency: json['currency'] as String,
    totalAmount: json['total_amount'] as int,
    invoicePayload: json['invoice_payload'] as String,
    shippingOptionId: json['shipping_option_id'] as String,
    orderInfo: json['order_info'] == null
        ? null
        : OrderInfo.fromJson(json['order_info'] as Map<String, dynamic>),
    telegramPaymentChargeId: json['telegram_payment_charge_id'] as String,
    providerPaymentChargeId: json['provider_payment_charge_id'] as String,
  );
}

Map<String, dynamic> _$SuccessfulPaymentToJson(SuccessfulPayment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currency', instance.currency);
  writeNotNull('total_amount', instance.totalAmount);
  writeNotNull('invoice_payload', instance.invoicePayload);
  writeNotNull('shipping_option_id', instance.shippingOptionId);
  writeNotNull('order_info', instance.orderInfo);
  writeNotNull('telegram_payment_charge_id', instance.telegramPaymentChargeId);
  writeNotNull('provider_payment_charge_id', instance.providerPaymentChargeId);
  return val;
}
