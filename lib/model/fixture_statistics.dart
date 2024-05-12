import 'package:freezed_annotation/freezed_annotation.dart';

part 'fixture_statistics.freezed.dart';
part 'fixture_statistics.g.dart';

@freezed
class FixtureStatistics with _$FixtureStatistics {
  const factory FixtureStatistics({
    required int teamId,
    required String teamName,
    required String teamLogo,
    required List<Statistic> statistics,
  }) = _FixtureStatistics;

  factory FixtureStatistics.fromJson(Map<String, dynamic> json) => _$FixtureStatisticsFromJson(json);
}

@freezed
class Statistic with _$Statistic {
  const factory Statistic({
    required String type,
    @Default(0) dynamic value,  // 型を dynamic に設定
  }) = _Statistic;

  factory Statistic.fromJson(Map<String, dynamic> json) => _$StatisticFromJson(json);
}
