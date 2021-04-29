import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:github_clone/constants.dart';
import 'package:github_clone/explore.dart';
import 'package:github_clone/home.dart';
import 'package:github_clone/notifications.dart';
import 'package:github_clone/profile.dart';
import 'package:github_clone/app_state.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(accentColor: C.accent, backgroundColor: C.background),
        title: kIsWeb ? 'Github Web' : 'Github Mobile',
        home: MenuScreen(),
      ),
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
  final bottomNavBarKey = UniqueKey();
  final homeScreenKey = UniqueKey();

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
        key: bottomNavBarKey,
        type: BottomNavigationBarType.fixed,
        backgroundColor: C.background,
        currentIndex: _currentIndex,
        selectedItemColor: C.accent,
        unselectedItemColor: C.unhighlightedIconColor,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Profile",
          ),
        ],
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
      body: [
        HomeScreen(key: homeScreenKey),
        NotificationsScreen(),
        ExploreScreen(),
        ProfileScreen(),
      ][_currentIndex],
    );
  }
}
