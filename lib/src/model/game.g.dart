// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Game _$GameFromJson(Map<String, dynamic> json) {
  return Game(
    title: json['title'] as String,
    description: json['description'] as String,
    photo: (json['photo'] as List)
        ?.map((e) =>
            e == null ? null : PhotoSize.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    text: json['text'] as String,
    textEntities: (json['text_entities'] as List)
        ?.map((e) => e == null
            ? null
            : MessageEntity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    animation: json['animation'] == null
        ? null
        : Animation.fromJson(json['animation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GameToJson(Game instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('photo', instance.photo);
  writeNotNull('text', instance.text);
  writeNotNull('text_entities', instance.textEntities);
  writeNotNull('animation', instance.animation);
  return val;
}
