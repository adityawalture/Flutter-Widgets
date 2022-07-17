import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:personal_project/ProfileUi.dart';
import 'package:personal_project/VisaUi.dart';

import 'Insta_Clone.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  //function for Image Picker
  ImagePicker _picker = ImagePicker();
  XFile? file;
  List<XFile>? _files;

  //function for geolocator
  Position? position;

  fetchposition() async {
    bool serviceEnabled;
    LocationPermission permission;
    String latitude;
    String longitude;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      Fluttertoast.showToast(msg: 'Location services is Disabled');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Fluttertoast.showToast(msg: 'Denied Permission');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      Fluttertoast.showToast(msg: 'Denied Permission Forever');
    }
    Position currentposition = await Geolocator.getCurrentPosition();
    setState(() {
      position = currentposition;
      latitude = currentposition.latitude.toString();
      print(latitude);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'TabBar Page',
            style: TextStyle(fontSize: 20),
          ),
          bottom: const TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              tabs: [
                Text(
                  'Stack',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  'Image Picker',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  'Geo Locator',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  'Status',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ]),
        ),
        //Content inside TabbarView
        body: TabBarView(children: [
          Container(
            color: Colors.blue[300],
            child: Center(
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: 400,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.deepOrange[200],
                        image: const DecorationImage(
                            image: AssetImage('assets/images/bckgrd.jpg'),
                            fit: BoxFit.fill),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //Elevated Button of Visa
                          TextButton(
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(15),
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 205, 136, 232)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: const BorderSide(
                                      style: BorderStyle.solid,
                                      color: Colors.white38),
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VisaUi()),
                              );
                            },
                            child: Row(
                              children: const [
                                Icon(
                                  CupertinoIcons.creditcard,
                                  color: Colors.black,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 4),
                                  child: Text(
                                    'Visa Ui',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(15),
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 205, 136, 232)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: const BorderSide(
                                      style: BorderStyle.solid,
                                      color: Colors.white38),
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Profile_UI()),
                              );
                            },
                            //icon and text
                            child: Row(
                              children: const [
                                Icon(
                                  CupertinoIcons.profile_circled,
                                  color: Colors.black,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 4),
                                  child: Text(
                                    'Profile Ui',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(15),
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 205, 136, 232)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: const BorderSide(
                                      style: BorderStyle.solid,
                                      color: Colors.white38),
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Insta_Clone()),
                              );
                            },
                            //icon and text
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.account_box_rounded,
                                  color: Colors.black,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 4),
                                  child: Text(
                                    'Insta Clone',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //Brown Box Over An Background image
                  Positioned(
                    left: 20,
                    top: 150,
                    right: 20,
                    child: Center(
                      child: Container(
                        height: 150,
                        width: 250,
                        color: Color.fromARGB(150, 111, 65, 53),
                        child: const Center(
                          child: Text(
                            'Inside Box',
                            style: TextStyle(
                                color: Color.fromARGB(255, 180, 165, 165),
                                fontWeight: FontWeight.bold,
                                fontSize: 28),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //tabBarview container 2 of image picker
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  color: Colors.grey.shade200,
                  child: Center(
                    child: file == null
                        ? Text('Image not Picked')
                        : Image.file(
                            File(file!.path),
                            fit: BoxFit.cover,
                          ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final XFile? photo =
                        await _picker.pickImage(source: ImageSource.gallery);
                    setState(() {
                      file = photo;
                    });
                  },
                  child: Text('Pick Image'),
                ),
                //Multiple Images
                ElevatedButton(
                  onPressed: () async {
                    final List<XFile>? images = await _picker.pickMultiImage();
                    setState(() {
                      _files = images;
                      for (int i = 0; i < _files!.length; i++) {
                        print(_files![i].path);
                      }
                    });
                  },
                  child: Text('Pick Images'),
                )
              ],
            ),
          ),
          //Tabbarview content container 3 foe geolocator
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  position == null ? 'Location' : position.toString(),
                  style: TextStyle(fontSize: 20),
                ),
                ElevatedButton(
                  onPressed: () {
                    fetchposition();
                  },
                  child: Text('Get Location'),
                )
              ],
            ),
          ),
          Text('Container 4'),
        ]),
      ),
    );
  }
}
