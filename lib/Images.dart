import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ImagesWidget extends StatelessWidget {
  const ImagesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Images Page'),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: HexColor('#fac0c0'),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, top: 18, right: 10, bottom: 20),
                  child: Container(
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                            color: HexColor('#383191'),
                            blurRadius: 10,
                            spreadRadius: 10)
                      ],
                      color: HexColor('#c0cdfa'),
                      // ignore: prefer_const_constructors
                      image: DecorationImage(
                          image: const NetworkImage(
                              'https://wallpapercave.com/wp/wp4462464.jpg'),
                          fit: BoxFit.fitWidth),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 13, top: 20, right: 13, bottom: 30),
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: HexColor('#32704c'),
                          blurRadius: 10,
                          spreadRadius: 10)
                    ],
                    color: HexColor('#c0cdfa'),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/gamer.jpg'),
                        fit: BoxFit.fitWidth),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
