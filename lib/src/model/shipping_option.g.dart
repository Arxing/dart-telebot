// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShippingOption _$ShippingOptionFromJson(Map<String, dynamic> json) {
  return ShippingOption(
    id: json['id'] as String,
    title: json['title'] as String,
    prices: (json['prices'] as List)
        ?.map((e) =>
            e == null ? null : LabeledPrice.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ShippingOptionToJson(ShippingOption instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('prices', instance.prices);
  return val;
}
