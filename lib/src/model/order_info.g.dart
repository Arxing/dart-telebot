// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderInfo _$OrderInfoFromJson(Map<String, dynamic> json) {
  return OrderInfo(
    name: json['name'] as String,
    phoneNumber: json['phone_number'] as String,
    email: json['email'] as String,
    shippingAddress: json['shipping_address'] == null
        ? null
        : ShippingAddress.fromJson(
            json['shipping_address'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$OrderInfoToJson(OrderInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('phone_number', instance.phoneNumber);
  writeNotNull('email', instance.email);
  writeNotNull('shipping_address', instance.shippingAddress);
  return val;
}
