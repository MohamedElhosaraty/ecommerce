import 'package:ecommerce/bottom_bar.dart';
import 'package:ecommerce/first.dart';
import 'package:ecommerce/home.dart';
import 'package:ecommerce/page1.dart';
import 'package:ecommerce/page2.dart';
import 'package:ecommerce/page3.dart';
import 'package:ecommerce/page4.dart';
import 'package:ecommerce/test.dart';
import 'package:ecommerce/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle( statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home:Home_Screen());
  }
}
