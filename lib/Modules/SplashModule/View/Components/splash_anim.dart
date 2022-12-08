import 'dart:async';
import 'package:easyshoponline/Modules/SplashModule/View/splash_anim1.dart';
import 'package:get/get.dart';
// import 'package:easyshop/SplashModule/View/splash_anim1.dart';
// import 'package:easyshop/splash_anim1.dart';
import 'package:flutter/material.dart';
class SplashAnim extends StatefulWidget {
  const SplashAnim({ Key? key }) : super(key: key);

  @override
  State<SplashAnim> createState() => _SplashAnimState();
}

class _SplashAnimState extends State<SplashAnim> {
   @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Get.off(SplashAnim1());
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(builder: (context) {
      //     return const SplashAnim1();
      //   }),
      // );
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(

        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,),
    );
  }
}