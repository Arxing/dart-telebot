import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'shipping_address.g.dart';

@JsonSerializable(includeIfNull: false)
class ShippingAddress {
  /// ISO 3166-1 alpha-2 country code
  @JsonKey(name: "country_code")
  String countryCode;

  /// State, if applicable
  @JsonKey(name: "state")
  String state;

  /// City
  @JsonKey(name: "city")
  String city;

  /// First line for the address
  @JsonKey(name: "street_line1")
  String streetLine1;

  /// Second line for the address
  @JsonKey(name: "street_line2")
  String streetLine2;

  /// Address post code
  @JsonKey(name: "post_code")
  String postCode;

  ShippingAddress(
      {this.countryCode,
      this.state,
      this.city,
      this.streetLine1,
      this.streetLine2,
      this.postCode});
  factory ShippingAddress.fromJson(Map<String, dynamic> json) =>
      _$ShippingAddressFromJson(json);

  Map<String, dynamic> toJson() => _$ShippingAddressToJson(this);

  String toString() => jsonEncode(toJson());
}
