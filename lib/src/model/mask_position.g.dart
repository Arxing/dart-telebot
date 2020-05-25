// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mask_position.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MaskPosition _$MaskPositionFromJson(Map<String, dynamic> json) {
  return MaskPosition(
    point: json['point'] as String,
    xShift: (json['x_shift'] as num)?.toDouble(),
    yShift: (json['y_shift'] as num)?.toDouble(),
    scale: (json['scale'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$MaskPositionToJson(MaskPosition instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('point', instance.point);
  writeNotNull('x_shift', instance.xShift);
  writeNotNull('y_shift', instance.yShift);
  writeNotNull('scale', instance.scale);
  return val;
}
