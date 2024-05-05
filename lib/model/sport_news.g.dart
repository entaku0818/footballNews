// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sport_news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SportNewsImpl _$$SportNewsImplFromJson(Map<String, dynamic> json) =>
    _$SportNewsImpl(
      createdAt: const TimestampDateTimeConverter().fromJson(json['createdAt']),
      imageUrl: json['imageUrl'] as String,
      sourceSite: json['sourceSite'] as String,
      title: json['title'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$SportNewsImplToJson(_$SportNewsImpl instance) =>
    <String, dynamic>{
      'createdAt':
          const TimestampDateTimeConverter().toJson(instance.createdAt),
      'imageUrl': instance.imageUrl,
      'sourceSite': instance.sourceSite,
      'title': instance.title,
      'url': instance.url,
    };
