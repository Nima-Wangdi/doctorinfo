import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

myStyle(double fs, [Color? crl, FontWeight? fw]) {
  return GoogleFonts.roboto(
    fontSize: fs,
    color: crl,
    fontWeight: fw,
  );
}

Color primaryColor = Colors.blue;
Color secondaryColor = Colors.green;
