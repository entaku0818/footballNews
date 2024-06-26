import 'package:flutter/material.dart';
import 'package:footballnews/api/FirestoreService.dart';
import 'package:footballnews/match_detail_screen.dart';
import 'package:footballnews/model/match_result.dart';
import 'package:intl/intl.dart'; 
class MatchResultsScreen extends StatefulWidget {
  @override
  _MatchResultsScreenState createState() => _MatchResultsScreenState();
}

class _MatchResultsScreenState extends State<MatchResultsScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final FirestoreService _firestoreService = FirestoreService();
  final List<String> _months = ['August', 'September', 'October', 'November', 'December', 'January', 'February', 'March', 'April', 'May', 'June', 'July'];
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

  List<MatchResult> filterResultsByMonth(int monthIndex) {
    if (allResults == null) return [];
    int month = (monthIndex + 7) % 12 + 1; // 8月からカウントし、月のインデックスを調整
    return allResults!.where((result) {
      var date = DateTime.parse(result.kickoffTime);
      return date.month == month;
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
        title: Text('Match Results'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),  // TabBarの高さをAppBarの高さに合わせて調整
          child: TabBar(
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.label,  // タブのラベル幅にインディケータを合わせる
            tabs: _months.map((month) => Tab(text: month)).toList(),
            isScrollable: true,
          ),
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MatchDetailScreen(fixtureId: match.id.toString()),
                            ),
                          );
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
