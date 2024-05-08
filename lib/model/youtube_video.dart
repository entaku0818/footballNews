import 'package:freezed_annotation/freezed_annotation.dart';

part 'youtube_video.freezed.dart';
part 'youtube_video.g.dart';

@freezed
class YouTubeVideo with _$YouTubeVideo {
  const factory YouTubeVideo({
    required String videoId,
    required String publishedAt,
    // Add other fields as needed
  }) = _YouTubeVideo;

  factory YouTubeVideo.fromJson(Map<String, dynamic> json) => _$YouTubeVideoFromJson(json);
}
