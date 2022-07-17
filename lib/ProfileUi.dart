// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:personal_project/stacks.dart';

class Profile_UI extends StatefulWidget {
  const Profile_UI({Key? key}) : super(key: key);

  @override
  State<Profile_UI> createState() => _Profile_UIState();
}

class _Profile_UIState extends State<Profile_UI> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 450,
                    child: Stack(children: [
                      Positioned(
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://images.pexels.com/photos/2478248/pexels-photo-2478248.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                                  fit: BoxFit.cover)),
                          height: 400,
                        ),
                      ),
                      const Positioned(
                          bottom: 0,
                          right: 20,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                'http://thenewcode.com/assets/images/thumbnails/sarah-parmenter.jpeg'),
                          ))
                    ]),
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 12,
                  child: BackButton(
                    color: Colors.white,
                    onPressed: (() {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StackWidget()));
                    }),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Madrid City Tour for Designers',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Travelling Enthusiastic, Wounderer.!!',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  rowIconText('20', Icons.favorite_border_rounded),
                  rowIconText('34', Icons.upload),
                  rowIconText('82', Icons.messenger_outlined),
                  rowIconText('295', Icons.face_retouching_natural_sharp),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                child: Text(
                  'Betty was a creature of habit and she thought she liked it that way. That was until Dave showed up in her life. She now had a choice to make and it would determine whether her lie remained the same or if it would change forever.',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget rowIconText(String text, IconData icon) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 5),
        Icon(icon)
      ],
    );
  }
}
