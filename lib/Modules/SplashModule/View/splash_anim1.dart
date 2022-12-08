import 'dart:async';

// import 'package:easyshop/sign_in.dart';
// import 'package:easyshop/AuthModule/View/sign_in.dart';
// import 'package:easyshoponline/AuthModule/View/Sign_in.dart';
import 'package:easyshoponline/AuthModule/View/Sign_in.dart';
import 'package:flutter/material.dart';

class SplashAnim1 extends StatefulWidget {
  const SplashAnim1({ Key? key }) : super(key: key);

  @override
  State<SplashAnim1> createState() => _SplashAnim1State();
}

class _SplashAnim1State extends State<SplashAnim1> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) {
          return const SignIn();
        }),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.asset("assets/images/splashanim1.png"),
        ),
    );
  }
}