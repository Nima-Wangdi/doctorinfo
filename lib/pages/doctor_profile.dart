import 'package:doctorinfo/constant/appBar.dart';
import 'package:doctorinfo/constant/font.dart';
import 'package:doctorinfo/model/doctor_model/doctor_model.dart';
import 'package:doctorinfo/object/doctor_object.dart';

// import 'package:doctorinfo/object/doctor_object.dart';
import 'package:doctorinfo/pages/home.dart';
import 'package:flutter/material.dart';

class DoctorProfile extends StatelessWidget {
  DoctorClass modelClass;

  DoctorProfile({super.key, required this.modelClass});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal,
        body: Container(
          // color: Colors.teal,
          child: SingleChildScrollView(
            // physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  child: Appbar(),
                ),
                Column(
                  children: [
                    Hero(
                        tag: '${modelClass.imgUrl}',
                        child: Image.asset('${modelClass.imgUrl}')),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50))),
                      // height: MediaQuery.of(context).size.height * 200,
                      // width: double.infinity,
                      // height: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${modelClass.doctorName}',
                              style: myStyle(22, null, FontWeight.w500),
                            ),
                            Align(
                              heightFactor: 0.3,
                              alignment: Alignment.topRight,
                              child: Text(
                                '\$ ${modelClass.servicePrice}',
                                style:
                                    myStyle(18, primaryColor, FontWeight.w500),
                              ),
                            ),
                            Text(
                              '${modelClass.speciality}',
                              style: myStyle(18, null, FontWeight.w400),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'About Doctor',
                              style: myStyle(20, primaryColor, FontWeight.w500),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              '${modelClass.profileDescription}',
                              style: myStyle(18, null, FontWeight.w300),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Card(
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Patients',
                                            style: myStyle(
                                                20, null, FontWeight.w300),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.person,
                                                color: primaryColor,
                                              ),
                                              Text(
                                                  '${modelClass.patient_number} +'),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Experience',
                                            style: myStyle(18),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.shopping_bag,
                                                color: primaryColor,
                                              ),
                                              Text('${modelClass.experience}'),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Ratings',
                                            style: myStyle(18),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                              ),
                                              Text('${modelClass.ratings}'),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                // ListView.builder(
                                //     shrinkWrap: true,
                                //     itemCount: modelClass.timing.length,
                                //     itemBuilder: (context, index) {
                                //       return ListTile(
                                //         leading: Text('Timing 8 AM to 3 PM'),
                                //         title:
                                //             Text('${modelClass.timing[index]}'),
                                //       );
                                //     }),
                              ],
                            ),

                            // height: 40,
                            SizedBox(
                              height: 20,
                            ),
                            ListView.builder(
                                physics: BouncingScrollPhysics(),
                                // scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: modelClass.timing.length,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    leading: Text(
                                      'Availability :',
                                      style: myStyle(
                                          20, primaryColor, FontWeight.w500),
                                    ),
                                    title: Text(
                                      '${modelClass.timing[index]}',
                                      style: myStyle(18, secondaryColor),
                                    ),
                                  );
                                }),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: secondaryColor,
                                  borderRadius: BorderRadius.circular(20)),
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Center(
                                  child: Text(
                                'Book A Doctor',
                                style:
                                    myStyle(20, Colors.white, FontWeight.w500),
                              )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
