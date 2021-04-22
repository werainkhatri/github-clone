import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:github_clone/constants.dart';
import 'package:github_clone/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(accentColor: C.accent, backgroundColor: C.background),
      title: kIsWeb ? 'Github Web' : 'Github Mobile',
      home: MenuScreen(),
    );
  }
}

class MenuScreen extends StatefulWidget {
  MenuScreen({Key key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: C.background,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: C.background,
        currentIndex: _currentIndex,
        selectedIconTheme: IconThemeData(color: C.accent),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Sample",
          ),
        ],
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
      body: [HomeScreen(), Container()][_currentIndex],
    );
  }
}
