// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'labeled_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LabeledPrice _$LabeledPriceFromJson(Map<String, dynamic> json) {
  return LabeledPrice(
    label: json['label'] as String,
    amount: json['amount'] as int,
  );
}

Map<String, dynamic> _$LabeledPriceToJson(LabeledPrice instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('label', instance.label);
  writeNotNull('amount', instance.amount);
  return val;
}
