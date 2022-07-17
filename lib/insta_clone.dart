// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Insta_Clone extends StatelessWidget {
  const Insta_Clone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Insta Clone',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          automaticallyImplyLeading: false,
        ),
        body: Container(
          child: Column(children: [
            Container(
              height: 200,
              child: Row(
                children: [
                  //contains profile pic, user name, bio
                  Container(
                    width: 180,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRbwFQ6QcYaluBlrHE_pn8nCAfWKA3khVcog&usqp=CAU'),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'adi_walture',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Vit_Bhopal',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //post, followers, following
                  Expanded(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                profileDetails('150', 'posts'),
                                SizedBox(width: 10),
                                profileDetails('5K', 'followers'),
                                SizedBox(width: 10),
                                profileDetails('2K', 'followings'),
                              ]),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                    onPressed: () {}, child: Text('Follow')),
                              ),
                              SizedBox(width: 4),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 50,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.blue, width: 2),
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Icon(Icons.arrow_drop_down,
                                      color: Colors.blue),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),
            Container(
              height: 120,
              //color: Colors.grey,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(6),
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.orange.shade200),
                      ),
                      Text('Tittle')
                    ],
                  );
                },
              ),
            ),
            Divider(
              thickness: 2,
            ),
            Container(
              height: 50,
              //color: Colors.yellow,
              child: TabBar(
                tabs: [
                  Text(
                    'Post',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text(
                    'Tags',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text(
                    'Reels',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                //color: Colors.green,
                child: TabBarView(
                  children: [
                    GridView.builder(
                      itemCount: 10,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: EdgeInsets.all(5),
                          height: 200,
                          width: 150,
                        );
                      },
                    ),
                    Container(
                      child: Center(child: Text('Tags')),
                    ),
                    Container(
                      child: Center(child: Text('Reels')),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }

  Widget profileDetails(String text1, text2) {
    return Column(
      children: [
        Text(
          text1,
          style: TextStyle(fontSize: 20),
        ),
        Text(
          text2,
          style: TextStyle(fontSize: 15),
        )
      ],
    );
  }
}
