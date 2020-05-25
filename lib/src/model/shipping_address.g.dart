// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShippingAddress _$ShippingAddressFromJson(Map<String, dynamic> json) {
  return ShippingAddress(
    countryCode: json['country_code'] as String,
    state: json['state'] as String,
    city: json['city'] as String,
    streetLine1: json['street_line1'] as String,
    streetLine2: json['street_line2'] as String,
    postCode: json['post_code'] as String,
  );
}

Map<String, dynamic> _$ShippingAddressToJson(ShippingAddress instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('country_code', instance.countryCode);
  writeNotNull('state', instance.state);
  writeNotNull('city', instance.city);
  writeNotNull('street_line1', instance.streetLine1);
  writeNotNull('street_line2', instance.streetLine2);
  writeNotNull('post_code', instance.postCode);
  return val;
}
