// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:personal_project/stacks.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Container(
            color: HexColor('#dde7ed'),
            child: ListView(children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  color: Colors.deepPurpleAccent,
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://i.pinimg.com/originals/f7/0f/c7/f70fc759c5c13493ca9e21862b914dbd.jpg'),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Aditya Walture'),
                          Text('aditya123@gmail.com')
                        ],
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 15),
                textColor: Color.fromARGB(255, 88, 111, 135),
                iconColor: Color.fromARGB(255, 88, 111, 135),
                leading: Icon(Icons.folder),
                title: Text('Folder'),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 15),
                textColor: Color.fromARGB(255, 88, 111, 135),
                iconColor: Color.fromARGB(255, 88, 111, 135),
                leading: Icon(Icons.star),
                title: Text('Rate us'),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 15),
                textColor: Color.fromARGB(255, 88, 111, 135),
                iconColor: Color.fromARGB(255, 88, 111, 135),
                leading: Icon(Icons.delete),
                title: Text('Bin'),
              ),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 15),
                textColor: Color.fromARGB(255, 88, 111, 135),
                iconColor: Color.fromARGB(255, 88, 111, 135),
                leading: Icon(Icons.share),
                title: Text('Share'),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 15),
                textColor: Color.fromARGB(255, 88, 111, 135),
                iconColor: Color.fromARGB(255, 88, 111, 135),
                leading: Icon(Icons.login),
                title: Text('Logout'),
              )
            ]),
          ),
        ),
        appBar: AppBar(
          title: Text('Button'),
        ),
        body: Container(
          color: HexColor('#dde7ed'),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                        overlayColor:
                            MaterialStateProperty.all(HexColor('#a6dcde')),
                        elevation: MaterialStateProperty.all(8),
                        backgroundColor: MaterialStateProperty.all(Colors.lime),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                            isDismissible: false,
                            enableDrag: false,
                            elevation: 5,
                            backgroundColor: Theme.of(context).primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            context: context,
                            builder: (context) {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  ListTile(
                                    title: Text('Orange'),
                                    subtitle: Text('Fruits'),
                                  ),
                                  ListTile(
                                    title: Text('Mango'),
                                    subtitle: Text('Fruits'),
                                  ),
                                  ListTile(
                                    title: Text('Bhendi'),
                                    subtitle: Text('Vegetables'),
                                  ),
                                  ListTile(
                                    title: Text('Vanga'),
                                    subtitle: Text('Vegetables'),
                                  ),
                                ],
                              );
                            });
                      },
                      child: Text(
                        'Bottom Sheet',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: BorderSide(
                                color: Colors.black, style: BorderStyle.solid),
                          ),
                        ),
                        padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                        overlayColor: MaterialStateProperty.all(
                          HexColor('#e3b1b1'),
                        ),
                        elevation: MaterialStateProperty.all(8),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 57, 220, 190)),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Button 2',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StackWidget()),
                  );
                },
                child: Text("Stacks"),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Theme.of(context).primaryColor),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                onPressed: () {},
                child: Text("Elevated Button 2"),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Theme.of(context).primaryColor),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                onPressed: () {
                  final snackbar = SnackBar(
                    content: Text('This is a snackbar'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: Text("SnackBar Button"),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Theme.of(context).primaryColor),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                onPressed: () {
                  final snackbar = SnackBar(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    behavior: SnackBarBehavior.floating,
                    content: Text('  Error...!!'),
                    backgroundColor: Colors.red,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: Text(" SnackBar Buttuon "),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Theme.of(context).primaryColor),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                onPressed: () {
                  final snackbar = SnackBar(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    behavior: SnackBarBehavior.floating,
                    content: Text(
                      'Button ---->>',
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.black,
                    action: SnackBarAction(
                      label: 'Undo',
                      textColor: Colors.white,
                      onPressed: () {},
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: Text(" Button inside SnackBar Button "),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
