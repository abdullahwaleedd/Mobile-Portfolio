import 'package:flutter/material.dart';
import 'package:testii/ProfilePage.dart';
import 'package:testii/ProjectsPage.dart';
import 'package:testii/SkillsPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/Profile': (context) => ProfilePage(),
        '/Projects': (context) => ProjectsPage(),
        '/Skills': (context) => SkillsPage(),
      },
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}
