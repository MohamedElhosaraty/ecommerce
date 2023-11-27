import 'package:flutter/material.dart';

 class Welcome_Screen extends StatelessWidget {
  const Welcome_Screen({super.key,});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

     return SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          color: Colors.red,
          child: Column(
            mainAxisAlignment:MainAxisAlignment.spaceBetween ,
            children: [
              //Image.asset('assets/images/1.png'),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                ),
              ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.green,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  }
}
