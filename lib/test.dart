import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Test_Screen extends StatefulWidget {
  const Test_Screen({super.key});

  @override
  State<Test_Screen> createState() => _Test_ScreenState();
}

class _Test_ScreenState extends State<Test_Screen> {

  int activeIndex=0;
  final controller =CarouselController();

  List<String> image =[
    "https://th.bing.com/th?id=OIP.vcU_GTxIdqQAGRJsvlVbuQHaFW&w=294&h=212&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2",
    "https://th.bing.com/th?id=OIP.SsSgSiDMHy1LhSmF5tqr9AHaEK&w=333&h=187&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2",
    "https://th.bing.com/th?id=OIP.jczQbNQxsnncRrsWsCIR1AHaFj&w=288&h=216&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2",
    "https://th.bing.com/th?id=OIP.ZZf-7o5dlW_7TF5brWvIhAHaE8&w=306&h=204&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2",
    "https://th.bing.com/th?id=OIP.1C4uQn5s-hyi7XaW_25m4wHaFj&w=288&h=216&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2",
    "https://th.bing.com/th/id/OIP.NDOdMC_KsCMy-cpI6kRK5wHaEW?pid=ImgDet&rs=1",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider.builder(
              carouselController: controller,
              options: CarouselOptions(height: 500.0,
                autoPlay: true,
                autoPlayCurve: Curves.easeInBack,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height ,
                onPageChanged: (index,reason){
                  setState(() {
                    activeIndex=index;
                  });
                }
              ),
              itemCount: image.length,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Container(
                  margin: EdgeInsets.all(16),
                  color: Colors.white,
                  child: Image.network(image[index],fit: BoxFit.contain,),
                );
              },
            ),
            SizedBox(
              height: 10,),
            AnimatedSmoothIndicator(
              onDotClicked: (index){
                controller.animateToPage(index);
              },
                activeIndex: activeIndex,
                count: image.length,
                effect: ExpandingDotsEffect(
                  dotHeight: 20,
                  dotWidth: 20,
                  activeDotColor: Colors.orange
                ),
            ),
            SizedBox(
              height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  controller.previousPage(duration: Duration(microseconds: 100));
                },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 32,vertical: 10,),
                    backgroundColor: Colors.orange
                  ),
                    child: Icon(Icons.arrow_back),

                ),
                SizedBox(
                  width: 10,),
                ElevatedButton(onPressed: (){
                  controller.nextPage(duration: Duration(microseconds: 100));
                },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 32,vertical: 10,),
                      backgroundColor: Colors.orange
                  ),
                  child: Icon(Icons.arrow_forward),

                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}
