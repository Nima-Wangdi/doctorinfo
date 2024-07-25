import 'package:doctorinfo/constant/appBar.dart';
import 'package:doctorinfo/constant/font.dart';
import 'package:doctorinfo/model/hospital_model/hospitalmodel.dart';
import 'package:doctorinfo/pages/hospital_page.dart';
import 'package:flutter/material.dart';

class HospitalDetailPage extends StatelessWidget {
  Hospitalmodel hospitalModel;

  HospitalDetailPage({super.key, required this.hospitalModel});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.teal,
        body: SingleChildScrollView(
          child: Container(
            // color: Colors.white,
            // padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Appbar(),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Center(
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffEEEDEB)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Search Pharmacy',
                                  style: myStyle(18),
                                ),
                                Icon(Icons.search)
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('${hospitalModel.imgUrl}')),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: MediaQuery.of(context).size.height * 0.3,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.45,
                        // color: Colors.red,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${hospitalModel.hospital_name}',
                              style: myStyle(24, primaryColor, FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Top-ranked in the U.S.',
                              style:
                                  myStyle(18, secondaryColor, FontWeight.w400),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              '${hospitalModel.hospital_name} has more No. 1 rankings than any other '
                              'hospital in the nation according to U.S. News & World Report.',
                              style: myStyle(
                                18,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width * 0.9,
                              decoration: BoxDecoration(
                                color: Color(0xffEEEDEB),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Center(
                                  child: Text(
                                'Why Choose ${hospitalModel.hospital_name}',
                                style: myStyle(18, null, FontWeight.w400),
                              )),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Locations',
                              style:
                                  myStyle(20, secondaryColor, FontWeight.w400),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Learn more about ${hospitalModel.hospital_name} '
                              'locations or choose a specific location.',
                              style: myStyle(
                                18,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
