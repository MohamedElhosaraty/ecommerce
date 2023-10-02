import 'package:ecommerce/page1.dart';
import 'package:ecommerce/page2.dart';
import 'package:ecommerce/page3.dart';
import 'package:ecommerce/page4.dart';
import 'package:ecommerce/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Page_Four());
  }
}
