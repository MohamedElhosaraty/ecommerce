import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce/home.dart';
import 'package:ecommerce/page1.dart';
import 'package:ecommerce/page2.dart';
import 'package:ecommerce/page3.dart';
import 'package:ecommerce/page4.dart';
import 'package:ecommerce/welcome.dart';
import 'package:flutter/material.dart';

class Bottom_Bar extends StatefulWidget {
  const Bottom_Bar({super.key});

  @override
  State<Bottom_Bar> createState() => _Bottom_BarState();
}

class _Bottom_BarState extends State<Bottom_Bar> {

  int currentIndex=0;

  List Screen=[
    Home_Screen(),
    Page_One(),
    Welcome_Screen(),
    Page_Three(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedIconTheme: IconThemeData(size: 40,),
        selectedFontSize: 20,
        items: [
          BottomNavigationBarItem(
             icon: Icon(Icons.home), label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'shopping'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: 'favorite'),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'meun',),
        ],
        onTap: (index){
          setState(() {
            currentIndex =index;
          });
        },
      ),
    );
  }
}
