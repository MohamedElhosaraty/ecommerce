import 'package:flutter/material.dart';

class Page_Four extends StatelessWidget {
  const Page_Four({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff666633),
        title: Text("Column And Row ",style: TextStyle(
          fontSize: 30,fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        color: Color(0xffd6d2c2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                Container(
                  color: Color(0xffffe6e6),
                  width: 80,
                  height: 600,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        height: 20,
                        color: Colors.brown,
                      ),
                      Container(
                        height: 20,
                        color: Colors.orange,
                      ),
                      Container(
                        height: 20,
                        color: Color(0xffffcc99),
                      ),
                      Container(
                        height: 20,
                        color: Color(0xffffcc66),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Container(
                        height: 20,
                        color: Colors.brown,
                      ),
                      Container(
                        width: 60,
                        height: 20,
                        color: Colors.orange,
                      ),
                      Container(
                        width: 40,
                        height: 20,
                        color: Color(0xffffcc99),
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        color: Color(0xffffcc66),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 20,
                            height: 80,
                            color: Colors.brown,
                          ),
                          Container(
                            width: 20,
                            height: 60,
                            color: Colors.orange,
                          ),
                          Container(
                            width: 20,
                            height: 40,
                            color: Color(0xffffcc99),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            color: Color(0xffffcc66),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 80,
                            color: Colors.brown,
                          ),
                          Container(
                            width: 20,
                            height: 80,
                            color: Colors.orange,
                          ),
                          Container(
                            width: 20,
                            height: 80,
                            color: Color(0xffffcc99),
                          ),
                          Container(
                            width: 20,
                            height: 80,
                            color: Color(0xffffcc66),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 80,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                Container(
                  color: Color(0xffccffcc),
                  width: 80,
                  height: 600,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        height: 20,
                        color: Color(0xff00b300),
                      ),
                      Container(
                        height: 20,
                        color: Color(0xff00ff00),
                      ),
                      Container(
                        height: 20,
                        color: Color(0xff99ff66),
                      ),
                      Container(
                        height: 20,
                        color: Color(0xffb3ff66),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Container(
                        height: 20,
                        color: Color(0xff00b300),
                      ),
                      Container(
                        width: 60,
                        height: 20,
                        color: Color(0xff00ff00),
                      ),
                      Container(
                        width: 40,
                        height: 20,
                        color: Color(0xff99ff66),
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        color: Color(0xffb3ff66),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 80,
                            color: Color(0xff00b300),
                          ),
                          Container(
                            width: 20,
                            height: 60,
                            color: Color(0xff00ff00),
                          ),
                          Container(
                            width: 20,
                            height: 40,
                            color: Color(0xff99ff66),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            color: Color(0xffb3ff66),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 80,
                            color: Color(0xff00b300),
                          ),
                          Container(
                            width: 20,
                            height: 80,
                            color: Color(0xff00ff00),
                          ),
                          Container(
                            width: 20,
                            height: 80,
                            color: Color(0xff99ff66),
                          ),
                          Container(
                            width: 20,
                            height: 80,
                            color: Color(0xffb3ff66),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 80,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                Container(
                  color: Color(0xfff2e6ff),
                  width: 80,
                  height: 600,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        height: 20,
                        color: Color(0xff6600cc),
                      ),
                      Container(
                        height: 20,
                        color: Color(0xffb366ff),
                      ),
                      Container(
                        height: 20,
                        color: Color(0xffd9b3ff),
                      ),
                      Container(
                        height: 20,
                        color: Color(0xffffccff),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Container(
                        height: 20,
                        color: Color(0xff6600cc),
                      ),
                      Container(
                        width: 60,
                        height: 20,
                        color: Color(0xffb366ff),
                      ),
                      Container(
                        width: 40,
                        height: 20,
                        color: Color(0xffd9b3ff),
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        color: Color(0xffffccff),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 20,
                            height: 80,
                            color: Color(0xff6600cc),
                          ),
                          Container(
                            width: 20,
                            height: 60,
                            color: Color(0xffb366ff),
                          ),
                          Container(
                            width: 20,
                            height: 40,
                            color: Color(0xffd9b3ff),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            color: Color(0xffffccff),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 80,
                            color: Color(0xff6600cc),
                          ),
                          Container(
                            width: 20,
                            height: 80,
                            color: Color(0xffb366ff),
                          ),
                          Container(
                            width: 20,
                            height: 80,
                            color: Color(0xffd9b3ff),
                          ),
                          Container(
                            width: 20,
                            height: 80,
                            color: Color(0xffffccff),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 80,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
