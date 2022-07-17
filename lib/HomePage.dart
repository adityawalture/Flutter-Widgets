// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.brown[50],
                    //shape: BoxShape.circle,
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.elliptical(90.0, 90.0),
                      right: Radius.elliptical(90.0, 90.0),
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.red,
                        blurRadius: 20,
                        spreadRadius: 4,
                      )
                    ]),

                // ignore: prefer_const_constructors
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black45,
                          width: 3,
                          style: BorderStyle.solid),
                      color: Colors.brown[400],
                      borderRadius: BorderRadius.all(
                        Radius.circular(17),
                      ),
                    ),
                    height: 100,
                    width: 250,
                    child: Center(
                      child: Text(
                        'Container 1',
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, top: 20.0, right: 0.0, bottom: 0.0),
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    //shape: BoxShape.circle,
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.elliptical(90.0, 90.0),
                      right: Radius.elliptical(90.0, 90.0),
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.red,
                        blurRadius: 20,
                        spreadRadius: 4,
                      )
                    ]),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black45,
                          width: 3,
                          style: BorderStyle.solid),
                      color: Colors.brown[400],
                      borderRadius: BorderRadius.all(
                        Radius.circular(17),
                      ),
                    ),
                    height: 100,
                    width: 250,
                    child: Center(
                      child: Text(
                        'Container 2',
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
