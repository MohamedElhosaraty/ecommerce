import 'package:ecommerce/page2.dart';
import 'package:flutter/material.dart';

class Page_Three extends StatefulWidget {
  const Page_Three({super.key});

  @override
  State<Page_Three> createState() => _Page_ThreeState();
}

class _Page_ThreeState extends State<Page_Three> {
  final _forKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Form(
        key: _forKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(
                  height: 113,
                ),
                //Image
                Center(
                    child: Image.asset(
                  'assets/images/2.png',
                  width: 75,
                  height: 75,
                )),
                const SizedBox(
                  height: 16,
                ),
                //Text 1
                const Text(
                  "Let’s Get Started",
                  style: TextStyle(
                    color: Color(0xff223263),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                // Text 2
                const Text(
                  "Create an new account",
                  style: TextStyle(
                      color: Color(0xff9098B1),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 28,
                ),
                //Text form 1
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Full Name',
                    labelStyle: TextStyle(fontSize: 20),
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.person_outlined,
                        size: 35,
                      ),
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                //Text form 2
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value){
                    if(value ==null || value.contains('@gmail.com') == false){
                      return 'Enter valid Email';
                    }
                  },
                  decoration:const InputDecoration(
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
                const SizedBox(
                  height: 8,
                ),
                //Text form 3
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value){
                    if(value ==null || value.length < 8 ){
                      return 'Enter valid password';
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
                const SizedBox(
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
                          MaterialPageRoute(builder: (context) => Page_Two()),
                        );
                        }else{
                          print('not success');
                        }
                      },
                      child: const Text(
                        "Sing in",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "have a account?",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff9098B1),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Sign In",
                          style:
                              TextStyle(fontSize: 18, color: Color(0xff40BFFF)),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// if(_forKey.currentState!.validate()) {
// bool result =await fireBaseLogin(emailcontroller.text, passwordcontroller.text);
// if(result == true){
// ScaffoldMessenger.of(context).showSnackBar(
// const SnackBar(content: Text('success')),
// );
