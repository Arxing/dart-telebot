import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'passport_data.g.dart';

@JsonSerializable(includeIfNull: false)
class PassportData {
  /// Array with information about documents and other Telegram Passport elements that was shared with the bot
  @JsonKey(name: "data")
  List<EncryptedPassportElement> data;

  /// Encrypted credentials required to decrypt the data
  @JsonKey(name: "credentials")
  EncryptedCredentials credentials;

  PassportData({this.data, this.credentials});
  factory PassportData.fromJson(Map<String, dynamic> json) =>
      _$PassportDataFromJson(json);

  Map<String, dynamic> toJson() => _$PassportDataToJson(this);

  String toString() => jsonEncode(toJson());
}
