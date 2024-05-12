import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_result.freezed.dart';
part 'match_result.g.dart';

@freezed
class MatchResult with _$MatchResult {
  factory MatchResult({
    required int id,
    required String homeTeam,
    required String awayTeam,
    int? homeScore,  // nullを許容
    int? awayScore,  // nullを許容
    required String homeTeamLogo,
    required String awayTeamLogo,
    int? duration,   // nullを許容
    required String kickoffTime,
  }) = _MatchResult;

  factory MatchResult.fromJson(Map<String, dynamic> json) => _$MatchResultFromJson(json);
}
