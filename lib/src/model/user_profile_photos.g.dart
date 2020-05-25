// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_photos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfilePhotos _$UserProfilePhotosFromJson(Map<String, dynamic> json) {
  return UserProfilePhotos(
    totalCount: json['total_count'] as int,
    photos: (json['photos'] as List)
        ?.map((e) => (e as List)
            ?.map((e) => e == null
                ? null
                : PhotoSize.fromJson(e as Map<String, dynamic>))
            ?.toList())
        ?.toList(),
  );
}

Map<String, dynamic> _$UserProfilePhotosToJson(UserProfilePhotos instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('total_count', instance.totalCount);
  writeNotNull('photos', instance.photos);
  return val;
}
