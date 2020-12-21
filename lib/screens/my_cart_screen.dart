import 'package:flutter/material.dart';
import 'package:kitapyurdu_clone/utils/colors.dart';

class MyCartScreen extends StatefulWidget {
  @override
  _MyCartScreenState createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Sepetim",
        style: TextStyle(color: MyColor.titleColor, fontSize: 50),
      ),
    );;
  }
}
