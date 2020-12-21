import 'package:flutter/material.dart';
import 'package:kitapyurdu_clone/utils/colors.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Kategoriler",
        style: TextStyle(color: MyColor.titleColor, fontSize: 50),
      ),
    );
  }
}
