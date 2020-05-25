import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'input_media_photo.g.dart';

@JsonSerializable(includeIfNull: false)
class InputMediaPhoto {
  /// Type of the result, must be photo
  @JsonKey(name: "type")
  String type;

  /// File to send. Pass a file_id to send a file that exists on the Telegram servers (recommended), pass an HTTP URL for Telegram to get a file from the Internet, or pass “attach://<file_attach_name>” to upload a new one using multipart/form-data under <file_attach_name> name. More info on Sending Files »
  @JsonKey(name: "media")
  String media;

  /// Optional. Caption of the photo to be sent, 0-1024 characters after entities parsing
  @JsonKey(name: "caption")
  String caption;

  /// Optional. Send Markdown or HTML, if you want Telegram apps to show bold, italic, fixed-width text or inline URLs in the media caption.
  @JsonKey(name: "parse_mode")
  String parseMode;

  InputMediaPhoto({this.type, this.media, this.caption, this.parseMode});
  factory InputMediaPhoto.fromJson(Map<String, dynamic> json) =>
      _$InputMediaPhotoFromJson(json);

  Map<String, dynamic> toJson() => _$InputMediaPhotoToJson(this);

  String toString() => jsonEncode(toJson());
}
