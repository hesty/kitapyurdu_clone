import 'package:flutter/material.dart';
import 'package:kitapyurdu_clone/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kitapyurdu Clone',
      theme: ThemeData(
      ),
      home: HomeScreen(),
    );
  }
}
