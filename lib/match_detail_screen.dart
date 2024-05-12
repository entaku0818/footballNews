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
            return Center(child: Text('No statistics found.'));
          }   
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: statistics.map((stat) => Expanded(
                  child: Card(
                    child: Column(
                      children: [
                        Image.network(stat.teamLogo, width: 50, height: 50),
                        Text(stat.teamName, style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                )).toList(),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: statistics.length,
                  itemBuilder: (context, index) {
                    final stat = statistics[index];
                    return ListTile(
                      title: Text(stat.teamName),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: stat.statistics.map((s) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(s.type),
                            _buildStatValue(s.value),
                          ],
                        )).toList(),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildStatValue(dynamic value) {

    // このメソッドは、値を適切に表示するためのものです。
    if (value == null) return Text('-'); // null値の場合はハイフンを表示
    if (value is int) {
      // 値が整数の場合、そのまま強調して表示
      return Text(
        value.toString(),
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
      );
    } else {
      // 値が数字で表現できない場合は、元の文字列として表示
      String stringValue = value.toString();
      int? intValue = int.tryParse(stringValue);
      if (intValue != null) {
        // 文字列が整数に変換できる場合は変換して表示
        return Text(
          intValue.toString(),
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
        );
      } else {
        // 文字列が整数に変換できない場合はそのまま表示
        return Text(stringValue);
      }
    }
  }
}
