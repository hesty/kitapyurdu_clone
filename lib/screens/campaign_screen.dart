import 'package:flutter/material.dart';
import 'package:kitapyurdu_clone/utils/colors.dart';

class CampaignScreen extends StatefulWidget {
  @override
  _CampaignScreenState createState() => _CampaignScreenState();
}

class _CampaignScreenState extends State<CampaignScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Kampanyalar",
        style: TextStyle(color: MyColor.titleColor, fontSize: 50),
      ),
    );
  }
}
