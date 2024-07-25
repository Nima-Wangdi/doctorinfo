import 'package:doctorinfo/constant/appBar.dart';
import 'package:doctorinfo/constant/font.dart';
import 'package:doctorinfo/model/topstories_color/color.dart';
import 'package:doctorinfo/object/color.dart';
import 'package:doctorinfo/object/doctor_object.dart';
import 'package:doctorinfo/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Appbar(),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                'Top Stories',
                style: myStyle(20, primaryColor, FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: allDocs.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: allCrl[index].cr),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 35,
                            backgroundImage:
                                AssetImage('${allDocs[index].imgUrl}'),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 150,
                    padding: EdgeInsets.all(10),
                    // width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.topCenter,
                            colors: [Color(0xff4B87CD), Color(0xff1157A5)])),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.brown,
                              backgroundImage:
                                  AssetImage('assets/images/doctor3.png'),
                            ),
                            Icon(
                              Icons.verified,
                              color: primaryColor,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 35),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Zhennu Tshelma',
                                style:
                                    myStyle(23, Colors.white, FontWeight.bold),
                              ),
                              Text(
                                'Last login : April 23, 2024',
                                style:
                                    myStyle(16, Colors.white, FontWeight.w300),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.person_pin,
                            size: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Profile Details',
                                  style: myStyle(20, null, FontWeight.w500),
                                ),
                                Text(
                                  'view your information',
                                  style: myStyle(16, null, FontWeight.w400),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          children: [
                            Icon(
                              Icons.favorite_border,
                              size: 25,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Favourite',
                                    style: myStyle(18, null, FontWeight.w500),
                                  ),
                                  Text(
                                    'view your favs',
                                    style: myStyle(16, null, FontWeight.w400),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          children: [
                            Icon(
                              Icons.logout,
                              size: 25,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'LogOut',
                                    style: myStyle(18, null, FontWeight.w500),
                                  ),
                                  Text(
                                    'last login : April 23,2024',
                                    style: myStyle(16, null, FontWeight.w400),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            Center(
              child: InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: Color(0xffEEEEEE),
                          title: Text(
                            'Do you want to delete account?',
                            style: myStyle(20, secondaryColor, FontWeight.w500),
                          ),
                          actions: [
                            Text(
                              'Yes',
                              style:
                                  myStyle(18, secondaryColor, FontWeight.w400),
                            ),
                            Text(
                              'No',
                              style:
                                  myStyle(18, secondaryColor, FontWeight.w400),
                            )
                          ],
                        );
                      });
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(15)),
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Center(
                        child: Text(
                      'Delete Account',
                      style: myStyle(20, Colors.white, FontWeight.w500),
                    )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
