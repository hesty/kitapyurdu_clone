import 'package:flutter/material.dart';
import 'package:kitapyurdu_clone/screens/campaign_screen.dart';
import 'package:kitapyurdu_clone/screens/categories_screen.dart';
import 'package:kitapyurdu_clone/screens/home_screen.dart';
import 'package:kitapyurdu_clone/screens/my_cart_screen.dart';
import 'package:kitapyurdu_clone/screens/search_screen.dart';
import 'package:kitapyurdu_clone/utils/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kitapyurdu Clone',
      theme: ThemeData(),
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int currentIndex = 0;
  final List<Widget> children = [
    HomeScreen(),
    CampaignScreen(),
    CategoriesScreen(),
    SearchScreen(),
    MyCartScreen()
  ];
  @override
  Widget build(BuildContext context) {
    void onTappedBar(int index) {
      setState(() {
        currentIndex = index;
      });
    }

    return Scaffold(
        body: children[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: MyColor.bottomNavigatoinBarColor,
          selectedItemColor: Colors.amber[800],
          unselectedItemColor: Colors.grey,
          unselectedLabelStyle: TextStyle(color: Colors.white30),
          onTap: (value) {
            currentIndex = value;
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Anasayfa'),
            BottomNavigationBarItem(
                icon: Icon(Icons.campaign_outlined), label: 'Kampanyalar'),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: 'Kategoriler'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Arama'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: 'Sepetim'),
          ],
        ));
  }
}
