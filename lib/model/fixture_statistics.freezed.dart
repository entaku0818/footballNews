// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fixture_statistics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FixtureStatistics _$FixtureStatisticsFromJson(Map<String, dynamic> json) {
  return _FixtureStatistics.fromJson(json);
}

/// @nodoc
mixin _$FixtureStatistics {
  int get teamId => throw _privateConstructorUsedError;
  String get teamName => throw _privateConstructorUsedError;
  String get teamLogo => throw _privateConstructorUsedError;
  List<Statistic> get statistics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FixtureStatisticsCopyWith<FixtureStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FixtureStatisticsCopyWith<$Res> {
  factory $FixtureStatisticsCopyWith(
          FixtureStatistics value, $Res Function(FixtureStatistics) then) =
      _$FixtureStatisticsCopyWithImpl<$Res, FixtureStatistics>;
  @useResult
  $Res call(
      {int teamId,
      String teamName,
      String teamLogo,
      List<Statistic> statistics});
}

/// @nodoc
class _$FixtureStatisticsCopyWithImpl<$Res, $Val extends FixtureStatistics>
    implements $FixtureStatisticsCopyWith<$Res> {
  _$FixtureStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamId = null,
    Object? teamName = null,
    Object? teamLogo = null,
    Object? statistics = null,
  }) {
    return _then(_value.copyWith(
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int,
      teamName: null == teamName
          ? _value.teamName
          : teamName // ignore: cast_nullable_to_non_nullable
              as String,
      teamLogo: null == teamLogo
          ? _value.teamLogo
          : teamLogo // ignore: cast_nullable_to_non_nullable
              as String,
      statistics: null == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as List<Statistic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FixtureStatisticsImplCopyWith<$Res>
    implements $FixtureStatisticsCopyWith<$Res> {
  factory _$$FixtureStatisticsImplCopyWith(_$FixtureStatisticsImpl value,
          $Res Function(_$FixtureStatisticsImpl) then) =
      __$$FixtureStatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int teamId,
      String teamName,
      String teamLogo,
      List<Statistic> statistics});
}

/// @nodoc
class __$$FixtureStatisticsImplCopyWithImpl<$Res>
    extends _$FixtureStatisticsCopyWithImpl<$Res, _$FixtureStatisticsImpl>
    implements _$$FixtureStatisticsImplCopyWith<$Res> {
  __$$FixtureStatisticsImplCopyWithImpl(_$FixtureStatisticsImpl _value,
      $Res Function(_$FixtureStatisticsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamId = null,
    Object? teamName = null,
    Object? teamLogo = null,
    Object? statistics = null,
  }) {
    return _then(_$FixtureStatisticsImpl(
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int,
      teamName: null == teamName
          ? _value.teamName
          : teamName // ignore: cast_nullable_to_non_nullable
              as String,
      teamLogo: null == teamLogo
          ? _value.teamLogo
          : teamLogo // ignore: cast_nullable_to_non_nullable
              as String,
      statistics: null == statistics
          ? _value._statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as List<Statistic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FixtureStatisticsImpl implements _FixtureStatistics {
  const _$FixtureStatisticsImpl(
      {required this.teamId,
      required this.teamName,
      required this.teamLogo,
      required final List<Statistic> statistics})
      : _statistics = statistics;

  factory _$FixtureStatisticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FixtureStatisticsImplFromJson(json);

  @override
  final int teamId;
  @override
  final String teamName;
  @override
  final String teamLogo;
  final List<Statistic> _statistics;
  @override
  List<Statistic> get statistics {
    if (_statistics is EqualUnmodifiableListView) return _statistics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statistics);
  }

  @override
  String toString() {
    return 'FixtureStatistics(teamId: $teamId, teamName: $teamName, teamLogo: $teamLogo, statistics: $statistics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FixtureStatisticsImpl &&
            (identical(other.teamId, teamId) || other.teamId == teamId) &&
            (identical(other.teamName, teamName) ||
                other.teamName == teamName) &&
            (identical(other.teamLogo, teamLogo) ||
                other.teamLogo == teamLogo) &&
            const DeepCollectionEquality()
                .equals(other._statistics, _statistics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, teamId, teamName, teamLogo,
      const DeepCollectionEquality().hash(_statistics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FixtureStatisticsImplCopyWith<_$FixtureStatisticsImpl> get copyWith =>
      __$$FixtureStatisticsImplCopyWithImpl<_$FixtureStatisticsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FixtureStatisticsImplToJson(
      this,
    );
  }
}

abstract class _FixtureStatistics implements FixtureStatistics {
  const factory _FixtureStatistics(
      {required final int teamId,
      required final String teamName,
      required final String teamLogo,
      required final List<Statistic> statistics}) = _$FixtureStatisticsImpl;

  factory _FixtureStatistics.fromJson(Map<String, dynamic> json) =
      _$FixtureStatisticsImpl.fromJson;

  @override
  int get teamId;
  @override
  String get teamName;
  @override
  String get teamLogo;
  @override
  List<Statistic> get statistics;
  @override
  @JsonKey(ignore: true)
  _$$FixtureStatisticsImplCopyWith<_$FixtureStatisticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Statistic _$StatisticFromJson(Map<String, dynamic> json) {
  return _Statistic.fromJson(json);
}

/// @nodoc
mixin _$Statistic {
  String get type => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticCopyWith<Statistic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticCopyWith<$Res> {
  factory $StatisticCopyWith(Statistic value, $Res Function(Statistic) then) =
      _$StatisticCopyWithImpl<$Res, Statistic>;
  @useResult
  $Res call({String type, dynamic value});
}

/// @nodoc
class _$StatisticCopyWithImpl<$Res, $Val extends Statistic>
    implements $StatisticCopyWith<$Res> {
  _$StatisticCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatisticImplCopyWith<$Res>
    implements $StatisticCopyWith<$Res> {
  factory _$$StatisticImplCopyWith(
          _$StatisticImpl value, $Res Function(_$StatisticImpl) then) =
      __$$StatisticImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, dynamic value});
}

/// @nodoc
class __$$StatisticImplCopyWithImpl<$Res>
    extends _$StatisticCopyWithImpl<$Res, _$StatisticImpl>
    implements _$$StatisticImplCopyWith<$Res> {
  __$$StatisticImplCopyWithImpl(
      _$StatisticImpl _value, $Res Function(_$StatisticImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = freezed,
  }) {
    return _then(_$StatisticImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticImpl implements _Statistic {
  const _$StatisticImpl({required this.type, this.value = 0});

  factory _$StatisticImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatisticImplFromJson(json);

  @override
  final String type;
  @override
  @JsonKey()
  final dynamic value;

  @override
  String toString() {
    return 'Statistic(type: $type, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticImplCopyWith<_$StatisticImpl> get copyWith =>
      __$$StatisticImplCopyWithImpl<_$StatisticImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticImplToJson(
      this,
    );
  }
}

abstract class _Statistic implements Statistic {
  const factory _Statistic({required final String type, final dynamic value}) =
      _$StatisticImpl;

  factory _Statistic.fromJson(Map<String, dynamic> json) =
      _$StatisticImpl.fromJson;

  @override
  String get type;
  @override
  dynamic get value;
  @override
  @JsonKey(ignore: true)
  _$$StatisticImplCopyWith<_$StatisticImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
