import 'package:flutter/material.dart';

class Page_One extends StatelessWidget {
  const Page_One({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
            child: Image.asset(
              'assets/images/1.png',
              width: 100,
              height: 100,
            ),
          ),
    );
  }
}
