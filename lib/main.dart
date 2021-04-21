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
      home: HomeScreen(),
    );
  }
}
