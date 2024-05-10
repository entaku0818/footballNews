import 'package:flutter/material.dart';
import 'package:footballnews/MatchResultsScreen.dart';
import 'package:footballnews/NewsListScreen.dart';
import 'package:footballnews/VideoGridScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter_svg/flutter_svg.dart';


void main() async{
WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomNavigationExample(),
    );
  }
}

class BottomNavigationExample extends StatefulWidget {
  @override
  _BottomNavigationExampleState createState() => _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State<BottomNavigationExample> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    MatchResultsScreen(),
    NewsListScreen(),
    VideoGridScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Football Mobile'),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/soccer_field_icon.svg',
              width: 28,
              height: 28,
              color: _currentIndex == 0 ? Colors.blueAccent : Colors.black54,
            ),  
            label: 'Match',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'News',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: 'Video Player',
          ),
        ],
      ),
    );
  }
}

