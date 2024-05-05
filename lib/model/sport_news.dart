import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // Import Firestore to handle Timestamp

part 'sport_news.freezed.dart';
part 'sport_news.g.dart';

@freezed
class SportNews with _$SportNews {
  const factory SportNews({
    @TimestampDateTimeConverter() required DateTime createdAt,
    required String imageUrl,
    required String sourceSite,
    required String title,
    required String url,
  }) = _SportNews;

  factory SportNews.fromJson(Map<String, dynamic> json) => _$SportNewsFromJson(json);
}

// Custom JSON converter for Timestamp to DateTime
class TimestampDateTimeConverter implements JsonConverter<DateTime, dynamic> {
  const TimestampDateTimeConverter();

  @override
  DateTime fromJson(dynamic json) {
    if (json is Timestamp) {
      return json.toDate();
    }
    throw Exception('Expected Timestamp, got $json');
  }

  @override
  dynamic toJson(DateTime dateTime) {
    return Timestamp.fromDate(dateTime);
  }
}