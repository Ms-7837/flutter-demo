
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ForgotPassword.dart';
import 'MyColor.dart';
import 'SignUpPage.dart';


class User extends StatefulWidget {

  @override
  _UserState createState() => _UserState();
}

class _UserState extends State< User > {
  var h,w;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(

      statusBarColor: MyColor.primary_bule,
      statusBarIconBrightness: Brightness.light, // For Android (dark icons)


       //or set color with: Color(0xFF0000FF)
    ));
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          gradient:
          new LinearGradient(colors: [ MyColor.primary_bule, MyColor.primary_bule])),
      child: Scaffold(




        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              height: height * 0.15,
            ),
            Container(
              margin: EdgeInsets.only(top: height * 0.15),
              height: height * 0.85,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: ListView(
                children: [
                   Image.asset(
                    'assets/logo.png',
                    height:  100,


                  ),
                  // Text(
                  //   'Login'.toUpperCase(),
                  //   style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  //   textAlign: TextAlign.center,
                  // ),
                  // SizedBox(
                  //   height: height * 0.01,
                  // ),
                  // Center(
                  //   child: Container(
                  //     height: 1,
                  //     width: width * 0.8,
                  //     color: Colors.grey,
                  //   ),
                  // ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.bold, letterSpacing: 1.8),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                width: 1,
                                style: BorderStyle.solid,
                                color: Colors.blue),
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],
                          contentPadding: EdgeInsets.all(12),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                width: 1,
                                style: BorderStyle.solid,
                                color: Colors.grey),
                          ),
                        )),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.bold, letterSpacing: 1.8),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                width: 1,
                                style: BorderStyle.solid,
                                color: Colors.blue),
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],
                          contentPadding: EdgeInsets.all(12),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                width: 1,
                                style: BorderStyle.solid,
                                color: Colors.grey),
                          ),
                        )),
                  ),
                  SizedBox(
                    height: height * 0.08,
                  ),
                  Center(
                    child: Container(
                      padding:
                      EdgeInsets.symmetric(horizontal: 26, vertical: 10),
                      decoration: BoxDecoration(
                          gradient: new LinearGradient(
                              colors: [ MyColor.primary_bule, MyColor.primary_bule]),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            // BoxShadow(
                            //     blurRadius: 4,
                            //     color: MyColor.primary_bule,
                            //     offset: Offset(2, 2)),
                          ]),
                      child: Text(
                        "Login".toUpperCase(),
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.7),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPassword()));
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          //  fontWeight: FontWeight.bold,
                          letterSpacing: 1.7),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Center(
                    child: Container(
                      height: 1,
                      width: width * 0.8,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                    },
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                              fontSize: 16,
                              // color: Colors.blue,
                              //  fontWeight: FontWeight.bold,
                              letterSpacing: 1.7),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          " Sign Up",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                              //  fontWeight: FontWeight.bold,
                              letterSpacing: 1.7),
                          textAlign: TextAlign.center,
                        ),

                      ],
                    ),
                  ),

                  SizedBox(
                    height: height * 0.03,
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
