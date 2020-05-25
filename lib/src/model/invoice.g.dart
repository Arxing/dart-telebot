// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Invoice _$InvoiceFromJson(Map<String, dynamic> json) {
  return Invoice(
    title: json['title'] as String,
    description: json['description'] as String,
    startParameter: json['start_parameter'] as String,
    currency: json['currency'] as String,
    totalAmount: json['total_amount'] as int,
  );
}

Map<String, dynamic> _$InvoiceToJson(Invoice instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('start_parameter', instance.startParameter);
  writeNotNull('currency', instance.currency);
  writeNotNull('total_amount', instance.totalAmount);
  return val;
}
