import 'package:flutter/material.dart';
import 'package:footballnews/api/FirestoreService.dart';
import 'package:footballnews/model/match_result.dart';
import 'package:intl/intl.dart'; // 日付をフォーマットするために追加

class MatchResultsScreen extends StatefulWidget {
  @override
  _MatchResultsScreenState createState() => _MatchResultsScreenState();
}

class _MatchResultsScreenState extends State<MatchResultsScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final FirestoreService _firestoreService = FirestoreService();
  final List<String> _months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
  List<MatchResult>? allResults;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _months.length, vsync: this);
    fetchAllResults();
  }

  void fetchAllResults() {
    _firestoreService.fetchMatchResults().listen((results) {
      setState(() {
        allResults = results;
      });
    });
  }

  List<MatchResult> filterResultsByMonth(int month) {
    if (allResults == null) return [];
    return allResults!.where((result) {
      var date = DateTime.parse(result.kickoffTime);
      return date.month == month + 1;  // DateTime.monthは1から始まるので+1します
    }).toList();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: _months.map((month) => Tab(text: month)).toList(),
          isScrollable: true,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _months.asMap().entries.map((entry) {
          int monthIndex = entry.key;
          List<MatchResult> monthlyResults = filterResultsByMonth(monthIndex);

          return monthlyResults.isEmpty
              ? Center(child: Text('No data available for ${entry.value}'))
              : ListView.builder(
                  itemCount: monthlyResults.length,
                  itemBuilder: (context, index) {
                    var match = monthlyResults[index];
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
        }).toList(),
      ),
    );
  }
}
