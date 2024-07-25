import 'dart:async';

import 'package:doctorinfo/pages/bottomNavigation.dart';
import 'package:doctorinfo/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 4),
        () => Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (builder) => BottomNavBar()),
            (route) => false));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(
                    height: 100, width: 100, 'assets/animations/loading1.json'),
                Lottie.asset(
                    height: 100, width: 100, 'assets/animations/sub.json'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
