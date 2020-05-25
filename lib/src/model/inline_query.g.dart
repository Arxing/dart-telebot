// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InlineQuery _$InlineQueryFromJson(Map<String, dynamic> json) {
  return InlineQuery(
    id: json['id'] as String,
    from: json['from'] == null
        ? null
        : User.fromJson(json['from'] as Map<String, dynamic>),
    location: json['location'] == null
        ? null
        : Location.fromJson(json['location'] as Map<String, dynamic>),
    query: json['query'] as String,
    offset: json['offset'] as String,
  );
}

Map<String, dynamic> _$InlineQueryToJson(InlineQuery instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('from', instance.from);
  writeNotNull('location', instance.location);
  writeNotNull('query', instance.query);
  writeNotNull('offset', instance.offset);
  return val;
}
