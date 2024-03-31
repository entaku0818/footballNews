import 'package:flutter/material.dart';

class NewsListScreen extends StatelessWidget {
  final List<String> newsTitles = [
    'Breaking News: Major Announcement from Tech Giant',
    'Latest Sports Updates: Championship Results',
    'Weather Alert: Severe Storm Warning Issued',
    'Entertainment Buzz: Celebrity Couple Ties the Knot',
    'Political News: Controversial Bill Passes in Parliament',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: newsTitles.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 2,
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: ListTile(
            title: Text(
              newsTitles[index],
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Tap to read more'),
            onTap: () {
              // Navigate to news detail screen
              // TODO: Implement navigation to news detail screen
            },
          ),
        );
      },
    );
  }
}