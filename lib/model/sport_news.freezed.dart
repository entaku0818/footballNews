// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sport_news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SportNews _$SportNewsFromJson(Map<String, dynamic> json) {
  return _SportNews.fromJson(json);
}

/// @nodoc
mixin _$SportNews {
  @TimestampDateTimeConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get sourceSite => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SportNewsCopyWith<SportNews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SportNewsCopyWith<$Res> {
  factory $SportNewsCopyWith(SportNews value, $Res Function(SportNews) then) =
      _$SportNewsCopyWithImpl<$Res, SportNews>;
  @useResult
  $Res call(
      {@TimestampDateTimeConverter() DateTime createdAt,
      String imageUrl,
      String sourceSite,
      String title,
      String url});
}

/// @nodoc
class _$SportNewsCopyWithImpl<$Res, $Val extends SportNews>
    implements $SportNewsCopyWith<$Res> {
  _$SportNewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? imageUrl = null,
    Object? sourceSite = null,
    Object? title = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      sourceSite: null == sourceSite
          ? _value.sourceSite
          : sourceSite // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SportNewsImplCopyWith<$Res>
    implements $SportNewsCopyWith<$Res> {
  factory _$$SportNewsImplCopyWith(
          _$SportNewsImpl value, $Res Function(_$SportNewsImpl) then) =
      __$$SportNewsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@TimestampDateTimeConverter() DateTime createdAt,
      String imageUrl,
      String sourceSite,
      String title,
      String url});
}

/// @nodoc
class __$$SportNewsImplCopyWithImpl<$Res>
    extends _$SportNewsCopyWithImpl<$Res, _$SportNewsImpl>
    implements _$$SportNewsImplCopyWith<$Res> {
  __$$SportNewsImplCopyWithImpl(
      _$SportNewsImpl _value, $Res Function(_$SportNewsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? imageUrl = null,
    Object? sourceSite = null,
    Object? title = null,
    Object? url = null,
  }) {
    return _then(_$SportNewsImpl(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      sourceSite: null == sourceSite
          ? _value.sourceSite
          : sourceSite // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SportNewsImpl implements _SportNews {
  const _$SportNewsImpl(
      {@TimestampDateTimeConverter() required this.createdAt,
      required this.imageUrl,
      required this.sourceSite,
      required this.title,
      required this.url});

  factory _$SportNewsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SportNewsImplFromJson(json);

  @override
  @TimestampDateTimeConverter()
  final DateTime createdAt;
  @override
  final String imageUrl;
  @override
  final String sourceSite;
  @override
  final String title;
  @override
  final String url;

  @override
  String toString() {
    return 'SportNews(createdAt: $createdAt, imageUrl: $imageUrl, sourceSite: $sourceSite, title: $title, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SportNewsImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.sourceSite, sourceSite) ||
                other.sourceSite == sourceSite) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, createdAt, imageUrl, sourceSite, title, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SportNewsImplCopyWith<_$SportNewsImpl> get copyWith =>
      __$$SportNewsImplCopyWithImpl<_$SportNewsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SportNewsImplToJson(
      this,
    );
  }
}

abstract class _SportNews implements SportNews {
  const factory _SportNews(
      {@TimestampDateTimeConverter() required final DateTime createdAt,
      required final String imageUrl,
      required final String sourceSite,
      required final String title,
      required final String url}) = _$SportNewsImpl;

  factory _SportNews.fromJson(Map<String, dynamic> json) =
      _$SportNewsImpl.fromJson;

  @override
  @TimestampDateTimeConverter()
  DateTime get createdAt;
  @override
  String get imageUrl;
  @override
  String get sourceSite;
  @override
  String get title;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$SportNewsImplCopyWith<_$SportNewsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
