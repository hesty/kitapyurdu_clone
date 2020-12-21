import 'package:flutter/material.dart';
import 'package:kitapyurdu_clone/utils/colors.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Arama",
        style: TextStyle(color: MyColor.titleColor, fontSize: 50),
      ),
    );
  }
}
