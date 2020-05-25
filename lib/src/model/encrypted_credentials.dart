import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'encrypted_credentials.g.dart';

@JsonSerializable(includeIfNull: false)
class EncryptedCredentials {
  /// Base64-encoded encrypted JSON-serialized data with unique user's payload, data hashes and secrets required for EncryptedPassportElement decryption and authentication
  @JsonKey(name: "data")
  String data;

  /// Base64-encoded data hash for data authentication
  @JsonKey(name: "hash")
  String hash;

  /// Base64-encoded secret, encrypted with the bot's public RSA key, required for data decryption
  @JsonKey(name: "secret")
  String secret;

  EncryptedCredentials({this.data, this.hash, this.secret});
  factory EncryptedCredentials.fromJson(Map<String, dynamic> json) =>
      _$EncryptedCredentialsFromJson(json);

  Map<String, dynamic> toJson() => _$EncryptedCredentialsToJson(this);

  String toString() => jsonEncode(toJson());
}
