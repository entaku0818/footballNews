import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:footballnews/model/fixture_statistics.dart';
import 'package:footballnews/model/match_result.dart';
import 'package:footballnews/model/sport_news.dart';
import 'package:footballnews/model/youtube_video.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<List<MatchResult>> fetchMatchResults() {
    return _db.collection('matchResults')
              .doc('39') 
              .snapshots()
              .map((snapshot) {
                print("Fetching match results for 2023_2024 season");
                var data = snapshot.data();
                var yearData = data?['2023_2024'] as List<dynamic>?; 
                if (yearData == null) {
                  print("No data found for match results");
                  return <MatchResult>[];
                }
                return yearData.map((f) => MatchResult.fromJson(f as Map<String, dynamic>)).toList();
              });
  }

  Stream<List<SportNews>> fetchSportsNews() {
    return _db.collection('books') 
      .orderBy('createdAt', descending: true)  
      .snapshots()
      .map((snapshot) {
        print("Fetching sports news");
        return snapshot.docs.map((doc) {
          return SportNews.fromJson(doc.data() as Map<String, dynamic>);
        }).toList();
      });
  }

  Stream<List<YouTubeVideo>> fetchYouTubeVideos() {
    return _db.collection('youtubeVideos').snapshots().map((snapshot) {
      print("Fetching YouTube videos");
      return snapshot.docs.map((doc) {
        return YouTubeVideo.fromJson(doc.data() as Map<String, dynamic>);
      }).toList();
    });
  }

  Stream<List<FixtureStatistics>> fetchFixtureStatistics(String fixtureId) {
    print("Fetching fixture statistics for fixture ID: $fixtureId");
    return _db.collection('fixtureStatistics').doc(fixtureId).snapshots().map(
      (snapshot) {
        var data = snapshot.data() as Map<String, dynamic>?;
        var teams = data?['teams'] as List<dynamic>?;
        if (teams == null) {
          print("No data found for fixture ID: $fixtureId");
          return <FixtureStatistics>[];
        }
        return teams.map((team) => FixtureStatistics.fromJson(team as Map<String, dynamic>)).toList();
      },
    );
  }
}
