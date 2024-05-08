// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'youtube_video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

YouTubeVideo _$YouTubeVideoFromJson(Map<String, dynamic> json) {
  return _YouTubeVideo.fromJson(json);
}

/// @nodoc
mixin _$YouTubeVideo {
  String get videoId => throw _privateConstructorUsedError;
  String get publishedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YouTubeVideoCopyWith<YouTubeVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YouTubeVideoCopyWith<$Res> {
  factory $YouTubeVideoCopyWith(
          YouTubeVideo value, $Res Function(YouTubeVideo) then) =
      _$YouTubeVideoCopyWithImpl<$Res, YouTubeVideo>;
  @useResult
  $Res call({String videoId, String publishedAt});
}

/// @nodoc
class _$YouTubeVideoCopyWithImpl<$Res, $Val extends YouTubeVideo>
    implements $YouTubeVideoCopyWith<$Res> {
  _$YouTubeVideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
    Object? publishedAt = null,
  }) {
    return _then(_value.copyWith(
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$YouTubeVideoImplCopyWith<$Res>
    implements $YouTubeVideoCopyWith<$Res> {
  factory _$$YouTubeVideoImplCopyWith(
          _$YouTubeVideoImpl value, $Res Function(_$YouTubeVideoImpl) then) =
      __$$YouTubeVideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String videoId, String publishedAt});
}

/// @nodoc
class __$$YouTubeVideoImplCopyWithImpl<$Res>
    extends _$YouTubeVideoCopyWithImpl<$Res, _$YouTubeVideoImpl>
    implements _$$YouTubeVideoImplCopyWith<$Res> {
  __$$YouTubeVideoImplCopyWithImpl(
      _$YouTubeVideoImpl _value, $Res Function(_$YouTubeVideoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
    Object? publishedAt = null,
  }) {
    return _then(_$YouTubeVideoImpl(
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$YouTubeVideoImpl implements _YouTubeVideo {
  const _$YouTubeVideoImpl({required this.videoId, required this.publishedAt});

  factory _$YouTubeVideoImpl.fromJson(Map<String, dynamic> json) =>
      _$$YouTubeVideoImplFromJson(json);

  @override
  final String videoId;
  @override
  final String publishedAt;

  @override
  String toString() {
    return 'YouTubeVideo(videoId: $videoId, publishedAt: $publishedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YouTubeVideoImpl &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, videoId, publishedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YouTubeVideoImplCopyWith<_$YouTubeVideoImpl> get copyWith =>
      __$$YouTubeVideoImplCopyWithImpl<_$YouTubeVideoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YouTubeVideoImplToJson(
      this,
    );
  }
}

abstract class _YouTubeVideo implements YouTubeVideo {
  const factory _YouTubeVideo(
      {required final String videoId,
      required final String publishedAt}) = _$YouTubeVideoImpl;

  factory _YouTubeVideo.fromJson(Map<String, dynamic> json) =
      _$YouTubeVideoImpl.fromJson;

  @override
  String get videoId;
  @override
  String get publishedAt;
  @override
  @JsonKey(ignore: true)
  _$$YouTubeVideoImplCopyWith<_$YouTubeVideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
