import 'package:doctorinfo/constant/appBar.dart';
import 'package:doctorinfo/constant/font.dart';
import 'package:doctorinfo/pages/home.dart';
import 'package:flutter/material.dart';

class Covid19 extends StatelessWidget {
  const Covid19({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Appbar(),
                SizedBox(
                  height: 20,
                ),
                // Text('')
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'COVID-19 Explained Briefly',
                          style: myStyle(20, secondaryColor, FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Card(
                        elevation: 4,
                        shadowColor: primaryColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 150,
                              width: 180,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/covid4.png',
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              height: 150,
                              width: 180,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/covid2.png'),
                                      fit: BoxFit.cover)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                          'COVID-19, caused by the novel coronavirus SARS-CoV-2, '
                          'emerged in December 2019 in Wuhan, China, and swiftly became '
                          'a global pandemic. Its rapid spread, high infection rates, '
                          'and significant health impacts have led to unprecedented '
                          'global challenges and responses.',
                          style: myStyle(18, null, FontWeight.w300)),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Global Impact',
                        style: myStyle(20, secondaryColor, FontWeight.w500),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Card(
                        elevation: 4,
                        shadowColor: secondaryColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 150,
                              width: 180,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/covid3.png',
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              height: 150,
                              width: 180,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/covid1.jpg'),
                                      fit: BoxFit.cover)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'The pandemic has had profound effects on global health'
                        ' systems, economies, and daily life. Hospitals faced surges '
                        'in patients, leading to overwhelmed healthcare systems in'
                        ' many regions. Economies contracted due to lockdowns',
                        style: myStyle(18, null, FontWeight.w300),
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
