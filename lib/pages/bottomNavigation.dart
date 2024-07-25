import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:doctorinfo/object/doctor_object.dart';
import 'package:doctorinfo/pages/PharmacyPage.dart';
import 'package:doctorinfo/pages/doctor_profile.dart';
import 'package:doctorinfo/pages/home.dart';
import 'package:doctorinfo/pages/hospital_page.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  // Define your pages or screens here
  List<Widget> _pages = [
    HomePage(),
    HospitalPage(),
    DoctorProfile(modelClass: allDocs[0]),
    Pharmacypage(),
  ];

  List<IconData> icons = [
    Icons.home,
    Icons.local_hospital,
    Icons.person,
    Icons.shopping_bag,
  ];
  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: Colors.blueAccent,
        icons: icons,
        activeIndex: _selectedIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: _onTap,
        activeColor: Colors.white,
        //other params
      ),
    );
  }
}
