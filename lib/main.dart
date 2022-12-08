import 'dart:async';

// import 'package:easyshop/splash_anim.dart';
import 'package:easyshoponline/Modules/SplashModule/View/Components/splash_anim.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:easyshop/SplashModule/View/splash_anim.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:get/get_navigation/get_navigation.dart';
// import 'package:searchfield/searchfield.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

void main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Splash(),
    );
  }
}
class Splash extends StatefulWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) {
          return const SplashAnim();
        }),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}