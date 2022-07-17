// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class RowsColumns extends StatelessWidget {
  const RowsColumns({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("Rows and columns"),
      ),
      body: SingleChildScrollView(
        child: Container(
          // height: h,
          //width: w,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 58, 102, 138),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      width: 90,
                      color: HexColor('#f5b84e'),
                      child: Center(
                        child: Text(
                          "Im Yellow",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 90,
                      color: HexColor('#4ef5ad'),
                      child: Center(
                        child: Text(
                          "Im green",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 90,
                      color: HexColor('#f54eb2'),
                      child: Center(
                        child: Text(
                          "Im Pink",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 500,
                      width: 350,
                      color: Colors.black54,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 250,
                            width: 350,
                            color: Colors.blue,
                            child: Row(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 240,
                                  width: 330,
                                  color: Colors.deepOrangeAccent,
                                  child: Center(
                                    child: Text(
                                      "Row> Container> Column >Container>Row> Container ",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              )
                            ]),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              // ignore: sized_box_for_whitespace
              Padding(
                padding: const EdgeInsets.only(
                    left: 0, top: 20, right: 145, bottom: 20),
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.deepOrangeAccent,
                          width: 2.0,
                          style: BorderStyle.solid)),
                  child: Image.asset(
                    'assets/images/loki.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
