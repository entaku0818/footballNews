import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MatchResultsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Match Results'),
      ),
      body: StreamBuilder<DocumentSnapshot>(
        stream: FirebaseFirestore.instance.collection('matchResults').doc('2023').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (!snapshot.hasData || snapshot.data!.data() == null) {
            return const Center(child: Text('No data available'));
          }

          // Ensure the data is a map before casting
          var data = snapshot.data!.data() as Map<String, dynamic>?; // This prevents the cast error
          if (data == null) {
            return const Center(child: Text('Data is unexpectedly null'));
          }

          var fixtures = data['fixtures'] as List<dynamic>?;
          if (fixtures == null) {
            return const Center(child: Text('Fixtures data not found'));
          }

          return ListView.builder(
            itemCount: fixtures.length,
            itemBuilder: (context, index) {
              var match = fixtures[index] as Map<String, dynamic>; // Ensuring each item is a Map
              var homeTeam = match['homeTeam'] as String? ?? 'Unknown team';
              var awayTeam = match['awayTeam'] as String? ?? 'Unknown team';
              return ListTile(
                title: Text('Match ${index + 1}'),
                subtitle: Text('$homeTeam vs $awayTeam'),
                // Add more match details here if needed
              );
            },
          );
        },
      ),
    );
  }
}
