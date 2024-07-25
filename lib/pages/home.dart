import 'package:doctorinfo/constant/customhomecard.dart';
import 'package:doctorinfo/constant/font.dart';
import 'package:doctorinfo/object/color.dart';
import 'package:doctorinfo/object/doctor_object.dart';
import 'package:doctorinfo/object/medicine_object.dart';
import 'package:doctorinfo/pages/PharmacyPage.dart';
import 'package:doctorinfo/pages/ambulances.dart';
import 'package:doctorinfo/pages/doctor_profile.dart';
import 'package:doctorinfo/pages/hospital_page.dart';
import 'package:doctorinfo/pages/profile.dart';
import 'package:doctorinfo/pages/static_page/covid19.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Card(
                elevation: 4,
                child: Container(
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.menu,
                          size: 30,
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
                                style: myStyle(
                                    22, secondaryColor, FontWeight.bold)),
                            TextSpan(
                                text: '+',
                                style:
                                    myStyle(22, primaryColor, FontWeight.bold))
                          ],
                        )),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (builder) => ProfilePage()));
                          },
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage('assets/images/doctor2.png'),
                            backgroundColor: primaryColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.45,
                            decoration: BoxDecoration(
                                border: Border.all(color: primaryColor),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30)),
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/doctors.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            // width: double.infinity,
                            width: MediaQuery.of(context).size.width * 0.46,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Stay Healthy!',
                                  style: myStyle(23, null, FontWeight.normal),
                                ),
                                Text(
                                  'Stay Safe!',
                                  style: myStyle(23, null, FontWeight.normal),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'We are here to help you '
                                  '24/7 with the '
                                  'best treatment in the world',
                                  style: myStyle(15),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.video_call_rounded,
                                      color: primaryColor,
                                      size: 40,
                                    ),
                                    Text(
                                      '  Meet Online',
                                      style: myStyle(
                                          18, secondaryColor, FontWeight.bold),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Services',
                          style: myStyle(22, primaryColor, FontWeight.bold),
                        ),
                        Text(
                          'See All',
                          style: myStyle(18),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (builder) => Covid19()));
                          },
                          child: Column(
                            children: [
                              Image.asset('assets/icons/virus.gif'),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Covid-19',
                                style: myStyle(18),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (builder) => AmbulancesPage()));
                          },
                          child: Column(
                            children: [
                              Image.asset('assets/icons/ambulance.gif'),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Ambulances',
                                style: myStyle(18),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (builder) => HospitalPage()));
                          },
                          child: Column(
                            children: [
                              Image.asset('assets/icons/hospital.gif'),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Hospital',
                                style: myStyle(18),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (builder) => Pharmacypage()));
                          },
                          child: Column(
                            children: [
                              Image.asset('assets/icons/medicine.gif'),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Medicines',
                                style: myStyle(18),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Top Rated Doctors',
                          style: myStyle(22, primaryColor, FontWeight.bold),
                        ),
                        Text(
                          'See All',
                          style: myStyle(18),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GridView.builder(
                        // physics: NeverScrollableScrollPhysics(),
                        itemCount: allDocs.length,
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 10,
                            childAspectRatio: 0.7),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (builder) => DoctorProfile(
                                      modelClass: allDocs[index])));
                            },
                            child: Hero(
                              tag: '${allDocs[index].imgUrl}',
                              child: HomeCard(
                                imgUrl: allDocs[index].imgUrl,
                                doctorName: allDocs[index].doctorName,
                                speciality: allDocs[index].speciality,
                                color: allCrl[index].cr,
                              ),
                            ),
                          );
                        }),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
