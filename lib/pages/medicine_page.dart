import 'package:doctorinfo/constant/appBar.dart';
import 'package:doctorinfo/constant/font.dart';
import 'package:doctorinfo/object/color.dart';
import 'package:doctorinfo/pages/PharmacyPage.dart';
import 'package:doctorinfo/pages/hospital_page.dart';
import 'package:flutter/material.dart';

class MedicinePage extends StatelessWidget {
  List medicine = [];
  MedicinePage({super.key, required this.medicine});

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
                height: 20,
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
                          'Best Selling Medicine',
                          style: myStyle(18, null, FontWeight.w300),
                        ),
                        Icon(
                          Icons.search,
                          color: secondaryColor,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: medicine.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.56,
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 5),
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Container(
                                  height: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: allCrl[index].cr,
                                      image: DecorationImage(
                                          fit: BoxFit.contain,
                                          image: AssetImage(
                                              '${medicine[index].imgUrl}'))),
                                ),
                                Positioned(
                                    right: 10,
                                    top: 10,
                                    child: Icon(Icons.favorite_border))
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, right: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '${medicine[index].name}',
                                          style: myStyle(20, primaryColor,
                                              FontWeight.bold),
                                        ),
                                        Text('\$${medicine[index].price}',
                                            style: myStyle(
                                                18, null, FontWeight.bold)),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xff88D66C),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      width:
                                          MediaQuery.of(context).size.width * 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Center(
                                          child: Text(
                                            'Buy Now',
                                            style: myStyle(18, Colors.white,
                                                FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
