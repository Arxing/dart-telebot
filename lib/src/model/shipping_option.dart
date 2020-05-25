import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'shipping_option.g.dart';

@JsonSerializable(includeIfNull: false)
class ShippingOption {
  /// Shipping option identifier
  @JsonKey(name: "id")
  String id;

  /// Option title
  @JsonKey(name: "title")
  String title;

  /// List of price portions
  @JsonKey(name: "prices")
  List<LabeledPrice> prices;

  ShippingOption({this.id, this.title, this.prices});
  factory ShippingOption.fromJson(Map<String, dynamic> json) =>
      _$ShippingOptionFromJson(json);

  Map<String, dynamic> toJson() => _$ShippingOptionToJson(this);

  String toString() => jsonEncode(toJson());
}
