import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomButton extends StatelessWidget {
  String text;
  VoidCallback onTap;

  CustomButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: MaterialButton(
      height: 100,
      minWidth: MediaQuery.of(context).size.width * 0.9,
      color: Colors.red,
      child: Text('${text}'),
      // onPressed: () {
      //   showDialog(
      //       context: context,
      //       builder: (context) {
      //         return AlertDialog(
      //           title: Text('Do you want to quit?'),
      //           actions: [
      //             TextButton(
      //                 onPressed: () {
      //                   Navigator.pop(context);
      //                 },
      //                 child: Text('Yes')),
      //             TextButton(
      //                 onPressed: () {
      //                   Navigator.pop(context);
      //                 },
      //                 child: Text('No')),
      //           ],
      //         );
      //       });
      // }),
      onPressed: onTap,
    ));
  }
}
