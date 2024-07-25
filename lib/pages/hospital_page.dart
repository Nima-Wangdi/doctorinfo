import 'package:doctorinfo/constant/appBar.dart';
import 'package:doctorinfo/constant/font.dart';
import 'package:doctorinfo/object/hospital_object.dart';
import 'package:doctorinfo/pages/hospital_detail.dart';
import 'package:flutter/material.dart';

class HospitalPage extends StatelessWidget {
  const HospitalPage({super.key});

  // get index => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Container(
                color: Colors.white,
                // padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Appbar(),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Best Hospital',
                          style: myStyle(22, secondaryColor, FontWeight.bold),
                        ),
                        Text(
                          'See All',
                          style: myStyle(18, null, null),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: allHospital.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: Container(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  '${allHospital[index].hospital_name}',
                                  style: myStyle(18, null, FontWeight.normal),
                                ),
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.9,
                      child: ListView.builder(
                          // physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: allHospital.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.17,
                                // width: MediaQuery.of(context).size.width * 0.1,
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (builder) =>
                                                    HospitalDetailPage(
                                                        hospitalModel:
                                                            allHospital[
                                                                index])));
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        height: 300,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.5,
                                        child: Card(
                                          elevation: 15,
                                          child: Image.asset(
                                            '${allHospital[index].imgUrl}',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 10,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${allHospital[index].hospital_name}',
                                            style: myStyle(18, primaryColor,
                                                FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 25,
                                          ),
                                          Row(
                                            // mainAxisAlignment:
                                            //     MainAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.location_on_outlined,
                                                size: 30,
                                                color: Colors.red,
                                              ),
                                              Text(
                                                '${allHospital[index].location}',
                                                style: myStyle(
                                                    15,
                                                    secondaryColor,
                                                    FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                size: 25,
                                                color: Colors.black26,
                                              ),
                                              Text(
                                                'Rating :${allHospital[index].rating}',
                                                style:
                                                    myStyle(16, primaryColor),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                // color: Colors.red,
                              ),
                            );
                          }),
                    )
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
