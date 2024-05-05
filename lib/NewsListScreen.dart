import 'package:flutter/material.dart';
import 'package:footballnews/api/FirestoreService.dart';
import 'package:footballnews/model/sport_news.dart';

class NewsListScreen extends StatelessWidget {
  final FirestoreService _firestoreService = FirestoreService();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<SportNews>>(
      stream: _firestoreService.fetchSportsNews(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (snapshot.hasData) {
          final newsList = snapshot.data!;
          return ListView.builder(
            itemCount: newsList.length,
            itemBuilder: (context, index) {
              final news = newsList[index];
              return Card(
                elevation: 2,
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: InkWell(
                  onTap: ()  {
                  },
                  child: Column(
                    children: <Widget>[
                      news.imageUrl.isNotEmpty ? Image.network(news.imageUrl) : SizedBox(),
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
                            Text('Source: ${news.sourceSite}', style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic)),
                            Text(news.createdAt.toString(), style: TextStyle(fontSize: 12, color: Colors.grey)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        } else {
          return Center(child: Text('No news available'));
        }
      },
    );
  }
}
