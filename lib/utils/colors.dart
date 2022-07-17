import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppColors {
  static Color bgColor = HexColor('#63d2f7');

  static List<BoxShadow> shadows = [
    BoxShadow(
        color: Colors.white.withOpacity(0.5),
        spreadRadius: -5,
        offset: Offset(-5, -5),
        blurRadius: 25),
    BoxShadow(
        color: Colors.green.withOpacity(0.5),
        spreadRadius: 2,
        offset: Offset(7, 7),
        blurRadius: 20),
  ];
}
