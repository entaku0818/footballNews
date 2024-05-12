// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fixture_statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FixtureStatisticsImpl _$$FixtureStatisticsImplFromJson(
        Map<String, dynamic> json) =>
    _$FixtureStatisticsImpl(
      teamId: (json['teamId'] as num).toInt(),
      teamName: json['teamName'] as String,
      teamLogo: json['teamLogo'] as String,
      statistics: (json['statistics'] as List<dynamic>)
          .map((e) => Statistic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FixtureStatisticsImplToJson(
        _$FixtureStatisticsImpl instance) =>
    <String, dynamic>{
      'teamId': instance.teamId,
      'teamName': instance.teamName,
      'teamLogo': instance.teamLogo,
      'statistics': instance.statistics,
    };

_$StatisticImpl _$$StatisticImplFromJson(Map<String, dynamic> json) =>
    _$StatisticImpl(
      type: json['type'] as String,
      value: json['value'] ?? 0,
    );

Map<String, dynamic> _$$StatisticImplToJson(_$StatisticImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
    };
