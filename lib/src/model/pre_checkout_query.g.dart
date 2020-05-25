// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pre_checkout_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreCheckoutQuery _$PreCheckoutQueryFromJson(Map<String, dynamic> json) {
  return PreCheckoutQuery(
    id: json['id'] as String,
    from: json['from'] == null
        ? null
        : User.fromJson(json['from'] as Map<String, dynamic>),
    currency: json['currency'] as String,
    totalAmount: json['total_amount'] as int,
    invoicePayload: json['invoice_payload'] as String,
    shippingOptionId: json['shipping_option_id'] as String,
    orderInfo: json['order_info'] == null
        ? null
        : OrderInfo.fromJson(json['order_info'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PreCheckoutQueryToJson(PreCheckoutQuery instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('from', instance.from);
  writeNotNull('currency', instance.currency);
  writeNotNull('total_amount', instance.totalAmount);
  writeNotNull('invoice_payload', instance.invoicePayload);
  writeNotNull('shipping_option_id', instance.shippingOptionId);
  writeNotNull('order_info', instance.orderInfo);
  return val;
}
