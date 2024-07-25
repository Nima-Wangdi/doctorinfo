import 'package:doctorinfo/constant/font.dart';
import 'package:doctorinfo/object/color.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  String imgUrl;
  String doctorName;
  String speciality;
  Color color;

  HomeCard(
      {super.key,
      required this.imgUrl,
      required this.doctorName,
      required this.speciality,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.only(top: 17),
        child: Column(
          children: [
            CircleAvatar(
              maxRadius: 40,
              backgroundImage: AssetImage('${imgUrl}'),
              backgroundColor: color,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '${doctorName}',
              style: myStyle(18, null, FontWeight.w500),
            ),
            Text(
              '${speciality}',
              style: myStyle(17, null, FontWeight.w400),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 30,
              width: 70,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.star,
                    size: 20,
                    color: primaryColor,
                  ),
                  Text(
                    '3',
                    style: myStyle(18, secondaryColor),
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
