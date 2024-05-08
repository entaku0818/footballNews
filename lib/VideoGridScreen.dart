import 'package:flutter/material.dart';
import 'package:footballnews/VideoPlayerScreen.dart';
import 'package:footballnews/api/FirestoreService.dart';
import 'package:footballnews/model/youtube_video.dart';

class VideoGridScreen extends StatelessWidget {
  const VideoGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final FirestoreService firestoreService = FirestoreService();

    return Scaffold(
      appBar: AppBar(
        title: const Text('YouTube Video Grid'),
      ),
      body: StreamBuilder<List<YouTubeVideo>>(
        stream: firestoreService.fetchYouTubeVideos(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData) {
            return const Center(child: Text("No videos found"));
          }

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),  // 横のパディングを設定
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, // 一行に表示するアイテム数
                crossAxisSpacing: 4.0, // 横の間隔
                mainAxisSpacing: 4.0,  // 縦の間隔
              ),
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                YouTubeVideo video = snapshot.data![index];
                return VideoPlayerScreen(initialVideoId: video.videoId);
              },
            ),
          );
        },
      ),
    );
  }
}
