import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'user_profile_photos.g.dart';

@JsonSerializable(includeIfNull: false)
class UserProfilePhotos {
  /// Total number of profile pictures the target user has
  @JsonKey(name: "total_count")
  int totalCount;

  /// Requested profile pictures (in up to 4 sizes each)
  @JsonKey(name: "photos")
  List<List<PhotoSize>> photos;

  UserProfilePhotos({this.totalCount, this.photos});
  factory UserProfilePhotos.fromJson(Map<String, dynamic> json) =>
      _$UserProfilePhotosFromJson(json);

  Map<String, dynamic> toJson() => _$UserProfilePhotosToJson(this);

  String toString() => jsonEncode(toJson());
}
