import 'package:ecommerce/page3.dart';
import 'package:ecommerce/page4.dart';
import 'package:flutter/material.dart';

class Page_Two extends StatefulWidget {
  const Page_Two({super.key});

  @override
  State<Page_Two> createState() => _Page_TwoState();
}

class _Page_TwoState extends State<Page_Two> {
  final _forKey =GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(
                height: 112,
              ),
              //Image
              Center(
                  child: Image.asset(
                'assets/images/2.png',
                width: 75,
                height: 75,
              )),
              SizedBox(
                height: 16,
              ),
              //Text 1
              Text(
                "Welcome to Lafyuu",
                style: TextStyle(
                  color: Color(0xff223263),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              // Text 2
              Text(
                "Sign in to continue",
                style: TextStyle(
                    color: Color(0xff9098B1),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 28,
              ),
              //Text form 1
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value){
                  if(value ==null || value.contains("@gmail.com") ==false){
                    return "Enter valid email";
                  }
                },
                decoration: InputDecoration(
                    labelText: 'Your Email',
                    labelStyle: TextStyle(fontSize: 20),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.email_outlined,
                        size: 35,
                      ),
                    ),
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 8,
              ),
              //Text form 2
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value){
                  if(value ==null || value.length < 8){
                    return "Enter valid password";
                  }
                },
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(fontSize: 20),
                    suffixIcon: Icon(Icons.visibility_off),
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.lock_outline,
                        size: 30,
                      ),
                    ),
                    border: OutlineInputBorder()),
              ),
              //bottom 1
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xff40BFFF),
                      borderRadius: BorderRadius.circular(10)),
                  width: double.infinity,
                  height: 57,
                  child: MaterialButton(
                    onPressed: () {
                    if(_forKey.currentState!.validate()){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Page_Three()),
                      );
                    }else{
                      print ("Not Success");
                    }
                    },
                    child:const Text(
                      "Login in",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Color(0xffEBF0FF),
                    ),
                  ),
                  Text(
                    "   OR   ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Color(0xffEBF0FF),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              //Text 3
              Container(
                width: 400,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black12),
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.network(
                        'https://th.bing.com/th/id/OIP.FnzI6eBMBS9n8VL7Wy39mAHaHa?pid=ImgDet&rs=1',
                        width: 40,
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Text(
                        "Login With Google ",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff9098B1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: 400,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black12),
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/0/05/Facebook_Logo_(2019).png",
                        width: 40,
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Text(
                        "Login With facebook ",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff9098B1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(fontSize: 16, color: Color(0xff40BFFF)),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have a account?",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff9098B1),
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        print ('login in');
                      },
                      child: Text(
                        "Register",
                        style:
                            TextStyle(fontSize: 18, color: Color(0xff40BFFF)),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
