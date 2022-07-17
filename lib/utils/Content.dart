import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'TextWidget.dart';

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            right: -150,
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white.withOpacity(0.1)),
            ),
          ),
          Positioned(
            left: -200,
            bottom: -490,
            child: Container(
              height: 600,
              width: 600,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white.withOpacity(0.1)),
            ),
          ),
          Positioned(
            top: 20,
            left: 25,
            child: Container(
              height: 140,
              child: Image.asset('assets/images/card.png'),
            ),
          ),
          const Positioned(
            top: 140,
            left: 27,
            child: CustomText(
              text: "Its where you want to be",
              color: Colors.black,
              size: 14,
            ),
          ),
          Positioned(
            bottom: 25,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '555 121 255 988',
                  style: GoogleFonts.sourceCodePro(
                      fontSize: 20,
                      color: Color.fromARGB(226, 139, 126, 126),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'ADITYA WALTURE',
                  style: GoogleFonts.sourceCodePro(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Positioned(
            top: 20,
            right: 30,
            child: Container(
                height: 120,
                width: 50,
                child: Image.asset('assets/images/chip.jpg')),
          )
        ],
      ),
    );
  }
}
