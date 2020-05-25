import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'shipping_query.g.dart';

@JsonSerializable(includeIfNull: false)
class ShippingQuery {
  /// Unique query identifier
  @JsonKey(name: "id")
  String id;

  /// User who sent the query
  @JsonKey(name: "from")
  User from;

  /// Bot specified invoice payload
  @JsonKey(name: "invoice_payload")
  String invoicePayload;

  /// User specified shipping address
  @JsonKey(name: "shipping_address")
  ShippingAddress shippingAddress;

  ShippingQuery(
      {this.id, this.from, this.invoicePayload, this.shippingAddress});
  factory ShippingQuery.fromJson(Map<String, dynamic> json) =>
      _$ShippingQueryFromJson(json);

  Map<String, dynamic> toJson() => _$ShippingQueryToJson(this);

  String toString() => jsonEncode(toJson());
}
