import 'package:flutter/material.dart';
import 'package:footballnews/api/FirestoreService.dart';
import 'package:footballnews/model/fixture_statistics.dart';


class MatchDetailScreen extends StatelessWidget {
  final String fixtureId;
  final FirestoreService _firestoreService = FirestoreService();

  MatchDetailScreen({Key? key, required this.fixtureId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fixture Statistics'),
      ),
      body: StreamBuilder<List<FixtureStatistics>>(
        stream: _firestoreService.fetchFixtureStatistics(fixtureId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          final statistics = snapshot.data ?? [];
          if (statistics.isEmpty) {
            return Center(child: Text('Error: No statistics found.'));
          }   
          return ListView.builder(
            itemCount: statistics.length,
            itemBuilder: (context, index) {
              final stat = statistics[index];
              return ListTile(
                title: Text(stat.teamName),
                subtitle: Text('Team ID: ${stat.teamId}'),
                trailing: Column(
                  children: stat.statistics.map((s) => Text('${s.type}: ${s.value}')).toList(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
