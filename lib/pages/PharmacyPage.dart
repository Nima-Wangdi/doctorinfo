import 'package:doctorinfo/constant/appBar.dart';
import 'package:doctorinfo/constant/font.dart';
import 'package:doctorinfo/object/color.dart';
import 'package:doctorinfo/object/medicine_object.dart';
import 'package:doctorinfo/object/pharmacy_object.dart';
import 'package:doctorinfo/pages/home.dart';
import 'package:doctorinfo/pages/medicine_page.dart';
import 'package:doctorinfo/pages/profile.dart';
import 'package:flutter/material.dart';

class Pharmacypage extends StatelessWidget {
  Pharmacypage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Appbar(),
              SizedBox(
                height: 10,
              ),
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
                          'Search all medicine',
                          style: myStyle(18),
                        ),
                        Icon(Icons.search)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff88D66C),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/op.jpg'))),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      'Best Pharmacy Shop',
                      style: myStyle(20, secondaryColor, FontWeight.w500),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: allPharmacy.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 5,
                            childAspectRatio: 0.5),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (builder) => MedicinePage(
                                      medicine: medicineStore[index])));
                            },
                            child: Card(
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 200,
                                      width: MediaQuery.of(context).size.width *
                                          0.45,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          // color: allCrl[index].cr,
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  '${allPharmacy[index].imgUrl}'))),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${allPharmacy[index].name}',
                                            style: myStyle(20, secondaryColor,
                                                FontWeight.w500),
                                          ),
                                          Text(
                                            '${allPharmacy[index].location}',
                                            style: myStyle(
                                                18, null, FontWeight.w300),
                                          ),
                                          Row(
                                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Text(
                                                'Rating ${allPharmacy[index].rating}',
                                                style: myStyle(
                                                    18, null, FontWeight.w300),
                                              ),
                                              Icon(
                                                Icons.star,
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
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
