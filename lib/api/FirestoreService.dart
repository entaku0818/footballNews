import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:footballnews/model/match_result.dart';
import 'package:footballnews/model/sport_news.dart';
import 'package:footballnews/model/youtube_video.dart';


class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<List<MatchResult>> fetchMatchResults() {
    return _db.collection('matchResults').doc('2023').snapshots().map(
      (snapshot) {
        var data = snapshot.data();
        var fixtures = data?['fixtures'] as List<dynamic>?;
        return fixtures?.map((f) => MatchResult.fromJson(f as Map<String, dynamic>)).toList() ?? [];
      },
    );
  }

Stream<List<SportNews>> fetchSportsNews() {
  return _db.collection('books') 
    .orderBy('createdAt', descending: true)  // 'score'フィールドで降順に並べ替え
    .snapshots()
    .map((snapshot) {
      return snapshot.docs.map((doc) {
        return SportNews.fromJson(doc.data() as Map<String, dynamic>);
      }).toList();
    });
}

  Stream<List<YouTubeVideo>> fetchYouTubeVideos() {
    return _db.collection('youtubeVideos').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return YouTubeVideo.fromJson(doc.data() as Map<String, dynamic>);
      }).toList();
    });
  }
}
