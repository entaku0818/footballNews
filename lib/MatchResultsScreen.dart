import 'package:flutter/material.dart';
import 'package:footballnews/api/FirestoreService.dart';
import 'package:footballnews/model/match_result.dart';
import 'package:intl/intl.dart'; // 日付をフォーマットするために追加

class MatchResultsScreen extends StatelessWidget {
  final FirestoreService _firestoreService = FirestoreService();

  MatchResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Match Results'),
      ),
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
              var kickoffTime = DateFormat('yyyy-MM-dd – kk:mm').format(DateTime.parse(match.kickoffTime));
              return Card(
                margin: const EdgeInsets.all(8),
                child: ListTile(
                  leading: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.network(match.homeTeamLogo, width: 40, height: 40),
                    ],
                  ),
                  title: Text('${match.homeTeam} vs ${match.awayTeam}'),
                  subtitle: Text('Score: ${match.homeScore} - ${match.awayScore} \nKickoff at $kickoffTime'),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.network(match.awayTeamLogo, width: 40, height: 40),
                    ],
                  ),
                  onTap: () {
                    // Tap action can be added here for more details or actions
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
