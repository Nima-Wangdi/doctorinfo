import 'package:doctorinfo/constant/appBar.dart';
import 'package:doctorinfo/constant/font.dart';
import 'package:doctorinfo/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

class AmbulancesPage extends StatelessWidget {
  const AmbulancesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Container(
            child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppBar(),
            // Appbar(),
            // SizedBox(
            //   height: 20,
            // ),
            Spacer(),
            Center(child: Lottie.asset('assets/animations/ani.json')),
            SizedBox(
              height: 50,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Colors.grey, width: 2, style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  )),
              color: Colors.deepPurpleAccent,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (builder) => HomePage()));
              },
              child: Text(
                'Book Ambulance',
                style: myStyle(18, Colors.white, FontWeight.bold),
              ),
            )
          ],
        )),
      ),
    );
  }
}
