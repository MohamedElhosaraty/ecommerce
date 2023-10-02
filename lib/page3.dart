import 'package:flutter/material.dart';

class Page_Three extends StatelessWidget {
  const Page_Three({super.key});

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
                "Let’s Get Started",
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
                "Create an new account",
                style: TextStyle(color: Color(0x25f098b1), fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 28,
              ),
              //Text form 1
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Full Name',
                    labelStyle: TextStyle(fontSize: 20),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(Icons.person_outlined,size: 35,),
                    ),
                    border: OutlineInputBorder(),),
              ),
              SizedBox(
                height: 8,
              ),
              //Text form 2
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Your Email',
                    labelStyle: TextStyle(fontSize: 20),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(Icons.email_outlined,size: 35,),
                    ),
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 8,
              ),
              //Text form 3
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(fontSize: 20),
                    suffixIcon: Icon(Icons.visibility_off),
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Icon(Icons.lock_outline,size: 30,),
                    ),
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 8,
              ),
              //Text form 4
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: 'Password Again',
                    labelStyle: TextStyle(fontSize: 20),
                    suffixIcon: Icon(Icons.visibility_off),
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Icon(Icons.lock_outline,size: 30,),
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
                    onPressed: () {},
                    child: Text(
                      "Sing in",
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("have a account?",style: TextStyle(
                    fontSize: 20,color: Color(0xff9098B1),
                  ),),
                  TextButton(
                      onPressed: (){},
                      child:
                      Text("Sign In",
                        style: TextStyle(
                            fontSize: 18,color: Color(0xff40BFFF)),)),

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
