import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_slider/image_slider.dart';
import 'package:kitapyurdu_clone/utils/colors.dart';
import 'package:kitapyurdu_clone/utils/image_url_lists.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  int selectedPage = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 13, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: buildBody(),
        bottomNavigationBar: buildBottomNavigationBar());
  }

  Widget buildAppBar() {
    return AppBar(
      leading: Image.network(
          "https://img.kitapyurdu.com/v1/getImage/fn:11250623/wh:fca476ca7"),
      backgroundColor: MyColor.appBarColor,
      title: Text(
        "kitapyurdu",
        style: TextStyle(
            color: MyColor.titleColor,
            fontWeight: FontWeight.bold,
            fontSize: 25),
      ),
      actions: [
        Center(
            child: Text(
          "Hesabim",
          style: TextStyle(color: Colors.grey),
        )),
        IconButton(
          color: Colors.grey,
          icon: Icon(Icons.account_circle_outlined),
        )
      ],
    );
  }

  Widget buildBody() {
    return Column(
      children: [
        buildImageSlider(),
        SizedBox(
          height: 10,
        ),
        buildBestSeller(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [Row(children: bookSliders)],
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
        buildInterst(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [Row(children: interstSliders)],
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xfff1b740),
                  ),
                  Text(
                    "Yeni Cikanlar",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(
                Icons.navigate_next,
                color: Colors.black,
                size: 25,
              )
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.post_add,
                    color: Color(0xfff1b740),
                  ),
                  Text(
                    "Yazarlar",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(
                Icons.navigate_next,
                color: Colors.black,
                size: 25,
              )
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.apartment_outlined,
                    color: Color(0xfff1b740),
                  ),
                  Text(
                    "Yayinevleri",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(
                Icons.navigate_next,
                color: Colors.black,
                size: 25,
              )
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
      ],
    );
  }

  final List<Widget> imageSliders = MyList.imgList
      .map((item) => Card(
            child: Container(
                child: Stack(
              children: [
                Image.network(
                  item,
                  width: 432.0,
                  height: 220,
                  fit: BoxFit.cover,
                )
              ],
            )),
          ))
      .toList();

  final List<Widget> interstSliders = MyList.interstList
      .map((item) => Card(
              child: Image.network(
            item,
            height: 100,
            width: 75,
            fit: BoxFit.cover,
          )))
      .toList();

  final List<Widget> bookSliders = MyList.bestSellerList
      .map((item) => Card(
              child: Image.network(
            item,
            height: 100,
            width: 75,
            fit: BoxFit.cover,
          )))
      .toList();

  Widget buildImageSlider() {
    return Container(
      child: ImageSlider(
        tabIndicatorSelectedColor: Colors.deepOrangeAccent,
        height: 220,
        showTabIndicator: true,
        tabController: tabController,
        children: imageSliders,
      ),
    );
  }

  Widget buildBestSeller() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Cok Satanlar",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: 70,
            height: 30,
            decoration: BoxDecoration(
                color: Color(0xff92e16c),
                borderRadius: BorderRadius.circular(4)),
            child: Center(
                child: Text(
              "TUMU",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )),
          ),
        ],
      ),
    );
  }

  Widget buildInterst() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Ilgi Gorenler",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: 70,
            height: 30,
            decoration: BoxDecoration(
                color: Color(0xff92e16c),
                borderRadius: BorderRadius.circular(4)),
            child: Center(
                child: Text(
              "TUMU",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )),
          ),
        ],
      ),
    );
  }

  buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: MyColor.bottomNavigatoinBarColor,
      selectedItemColor: Colors.amber[800],
      unselectedItemColor: Colors.grey,
      unselectedLabelStyle: TextStyle(color: Colors.white30),
      onTap: (int index){
      Navigator.pushReplacement(context, )
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
    );
  }
}
