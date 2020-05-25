import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'input_media_animation.g.dart';

@JsonSerializable(includeIfNull: false)
class InputMediaAnimation {
  /// Type of the result, must be animation
  @JsonKey(name: "type")
  String type;

  /// File to send. Pass a file_id to send a file that exists on the Telegram servers (recommended), pass an HTTP URL for Telegram to get a file from the Internet, or pass “attach://<file_attach_name>” to upload a new one using multipart/form-data under <file_attach_name> name. More info on Sending Files »
  @JsonKey(name: "media")
  String media;

  /// Optional. Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side. The thumbnail should be in JPEG format and less than 200 kB in size. A thumbnail‘s width and height should not exceed 320. Ignored if the file is not uploaded using multipart/form-data. Thumbnails can’t be reused and can be only uploaded as a new file, so you can pass “attach://<file_attach_name>” if the thumbnail was uploaded using multipart/form-data under <file_attach_name>. More info on Sending Files »
  @JsonKey(name: "thumb")
  String thumb;

  /// Optional. Caption of the animation to be sent, 0-1024 characters after entities parsing
  @JsonKey(name: "caption")
  String caption;

  /// Optional. Send Markdown or HTML, if you want Telegram apps to show bold, italic, fixed-width text or inline URLs in the media caption.
  @JsonKey(name: "parse_mode")
  String parseMode;

  /// Optional. Animation width
  @JsonKey(name: "width")
  int width;

  /// Optional. Animation height
  @JsonKey(name: "height")
  int height;

  /// Optional. Animation duration
  @JsonKey(name: "duration")
  int duration;

  InputMediaAnimation(
      {this.type,
      this.media,
      this.thumb,
      this.caption,
      this.parseMode,
      this.width,
      this.height,
      this.duration});
  factory InputMediaAnimation.fromJson(Map<String, dynamic> json) =>
      _$InputMediaAnimationFromJson(json);

  Map<String, dynamic> toJson() => _$InputMediaAnimationToJson(this);

  String toString() => jsonEncode(toJson());
}
