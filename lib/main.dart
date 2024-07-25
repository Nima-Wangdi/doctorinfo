import 'package:doctorinfo/pages/bottomNavigation.dart';
import 'package:doctorinfo/pages/home.dart';
import 'package:doctorinfo/pages/splash.dart';

// import 'package:doctorinfo/practice/alertdiologue_box.dart';
// import 'package:doctorinfo/practice/stack.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Splash_Screen(),
      // home: AlertdiologueBox(),
      // home: StackPage(),
      // home: BottomNavBar(),
      // home: Bottomsheet(),
      // home: CarouselDemo(),
    );
  }
}
