import 'package:ecommerce/page1.dart';
import 'package:ecommerce/page2.dart';
import 'package:flutter/material.dart';

class First_page extends StatefulWidget {
  const First_page({super.key});

  @override
  State<First_page> createState() => _First_pageState();
}

class _First_pageState extends State<First_page> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => Page_Two(),
          ),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.blue,
              child: Image.asset("assets/images/1.png"))),
    );
  }
}
