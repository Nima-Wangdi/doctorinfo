import 'package:doctorinfo/constant/font.dart';
import 'package:doctorinfo/pages/PharmacyPage.dart';
import 'package:doctorinfo/pages/home.dart';
import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 14, top: 8, bottom: 8),
        child: Container(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (builder) => HomePage()));
                },
                child: Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.black,
                ),
              ),
              RichText(
                  text: TextSpan(
                text: 'Doc',
                style: myStyle(
                  22,
                  primaryColor,
                  FontWeight.bold,
                ),
                children: [
                  TextSpan(
                      text: 'Time',
                      style: myStyle(22, secondaryColor, FontWeight.bold)),
                  TextSpan(
                      text: '+',
                      style: myStyle(22, primaryColor, FontWeight.bold))
                ],
              )),
              Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Container(
                      height: 6,
                      width: 6,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Container(
                      // margin: EdgeInsets.only(top: 2),
                      height: 6,
                      width: 6,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Container(
                      height: 6,
                      width: 6,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
