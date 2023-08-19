// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_riview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

model_riview _$model_riviewFromJson(Map<String, dynamic> json) => model_riview(
      json['http_status'] as String,
      json['loc_code'] as String,
      json['name'] as String,
      json['rating'] as int,
      json['regDate'] as String,
      json['content'] as String,
      json['imglink'] as String,

    );

Map<String, dynamic> _$model_riviewToJson(model_riview instance) =>
    <String, dynamic>{
      'http_status': instance.http_status,
      'loc_code': instance.loc_code,
      'name': instance.name,
      'rating': instance.rating,
      'regDate': instance.regDate,
      'content': instance.content,
      'imglink': instance.imglink,

    };
