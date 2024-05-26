import 'package:flutter/material.dart';
import 'package:footballnews/api/FirestoreService.dart';
import 'package:footballnews/model/sport_news.dart';
import 'package:footballnews/news_web_view_screen.dart';


class NewsListScreen extends StatelessWidget {
  final FirestoreService _firestoreService = FirestoreService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sports News'),
      ),
      body: StreamBuilder<List<SportNews>>(
        stream: _firestoreService.fetchSportsNews(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final newsList = snapshot.data!;
            if (newsList.isEmpty) {
              return Center(child: Text('No news available'));
            }
            return ListView.builder(
              itemCount: newsList.length,
              itemBuilder: (context, index) {
                final news = newsList[index];
                return _buildNewsCard(context, news);
              },
            );
          } else {
            return Center(child: Text('No news available'));
          }
        },
      ),
    );
  }

  Widget _buildNewsCard(BuildContext context, SportNews news) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: InkWell(
        onTap: () {
            Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WebViewApp(url: news.url),
                  ),
                );        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (news.imageUrl.isNotEmpty)
              Image.network(
                news.imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Icon(Icons.error),
              ),
            ListTile(
              title: Text(
                news.title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Tap to read more'),
              isThreeLine: true,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Source: ${news.sourceSite}',
                    style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                  ),
                  Text(
                    news.createdAt.toString(),
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
