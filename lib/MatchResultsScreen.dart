import 'package:flutter/material.dart';
import 'package:footballnews/api/FirestoreService.dart';
import 'package:footballnews/model/match_result.dart';


class MatchResultsScreen extends StatelessWidget {
  final FirestoreService _firestoreService = FirestoreService();

  MatchResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<List<MatchResult>>(
        stream: _firestoreService.fetchMatchResults(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (snapshot.data == null || snapshot.data!.isEmpty) {
            return const Center(child: Text('No data available'));
          }

          var fixtures = snapshot.data!;
          return ListView.builder(
            itemCount: fixtures.length,
            itemBuilder: (context, index) {
              var match = fixtures[index];
              return ListTile(
                title: Text('Match ${index + 1}'),
                subtitle: Text('${match.homeTeam} vs ${match.awayTeam}'),
              );
            },
          );
        },
      ),
    );
  }
}
