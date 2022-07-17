import 'package:flutter/material.dart';
import 'package:personal_project/Butt.onsWidget.dart';
import 'package:personal_project/Images.dart';
import 'package:personal_project/ListView.dart';
import 'package:personal_project/RowsColumns.dart';

import 'dismissible.dart';
import 'dropdownlist.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedindex = 0;

  PageController pageController = PageController();
  // List<Widget> widgets = [
  //   Text('Home'),
  //   Text('Search'),
  //   Text('Add'),
  //   Text('Profile'),
  // ];

  void OnTapped(int index) {
    setState(() {
      selectedindex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: const [
          DismissibleWidget(),
          ImagesWidget(),
          ListGridView(),
          RowsColumns(),
          ButtonsWidget()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Dismissible'),
          BottomNavigationBarItem(
              icon: Icon(Icons.image_sharp), label: 'Images'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List&grid'),
          BottomNavigationBarItem(
              icon: Icon(Icons.check_box_outline_blank_outlined),
              label: 'Containers'),
          BottomNavigationBarItem(icon: Icon(Icons.ad_units), label: 'Buttons')
        ],
        currentIndex: selectedindex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: OnTapped,
      ),
    );
  }
}
