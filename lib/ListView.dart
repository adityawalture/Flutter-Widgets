// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ListGridView extends StatefulWidget {
  const ListGridView({Key? key}) : super(key: key);

  @override
  State<ListGridView> createState() => _ListGridViewState();
}

class _ListGridViewState extends State<ListGridView> {
  List<String> fruits = ['Mango', 'Apple', 'Grapes', 'PineApple', 'Orange'];
  Map fruits_Subtittle = {
    'fruits': ['Mango', 'Apple', 'Grapes', 'PineApple', 'Orange'],
    'names': ['Aditya', 'Swastik', 'Divyansh', 'Animesh', 'Paritosh']
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List and Grid View'),
        elevation: 8,
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: Colors.amber[50],
        // child: ListView.builder(
        //     itemCount: fruits.length,
        //     itemBuilder: (context, index) {
        //       return Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Card(
        //           elevation: 5,
        //           shadowColor: Colors.amberAccent,
        //           child: ListTile(
        //             leading: const Icon(
        //               Icons.person,
        //               color: Colors.amberAccent,
        //             ),
        //             title: Text(fruits_Subtittle['fruits'][index]),
        //             subtitle: Text(fruits_Subtittle['names'][index]),
        //           ),
        //         ),
        //       );
        //     }),
        // child: GridView(
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 2,
        //       crossAxisSpacing: 5,
        //       mainAxisSpacing: 5,
        //       childAspectRatio: 2 / 3 //width=2, height=3
        //       ),
        //   children: [
        //     Card(
        //       child: Center(
        //         child: Text('Orange'),
        //       ),
        //     ),
        //     Card(
        //       child: Center(
        //         child: Text('Orange'),
        //       ),
        //     ),
        //     Card(
        //       child: Center(
        //         child: Text('Orange'),
        //       ),
        //     ),
        //     Card(
        //       child: Center(
        //         child: Text('Orange'),
        //       ),
        //     )
        //   ],
        // ),
        child: GridView.builder(
            itemCount: fruits.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.deepOrange[50],
                  elevation: 8,
                  shadowColor: Colors.black,
                  child: Center(
                    child: Text(
                      fruits[index],
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 29),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
