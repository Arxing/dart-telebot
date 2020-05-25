// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShippingQuery _$ShippingQueryFromJson(Map<String, dynamic> json) {
  return ShippingQuery(
    id: json['id'] as String,
    from: json['from'] == null
        ? null
        : User.fromJson(json['from'] as Map<String, dynamic>),
    invoicePayload: json['invoice_payload'] as String,
    shippingAddress: json['shipping_address'] == null
        ? null
        : ShippingAddress.fromJson(
            json['shipping_address'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ShippingQueryToJson(ShippingQuery instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('from', instance.from);
  writeNotNull('invoice_payload', instance.invoicePayload);
  writeNotNull('shipping_address', instance.shippingAddress);
  return val;
}
