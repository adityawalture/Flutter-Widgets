// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Show Alert'),
          onPressed: () {
            _showMyDialog(context);
          },
        ),
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog(
      context: context,
      // ignore: avoid_types_as_parameter_names
      builder: (BuildContext) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: Text('This is alert page'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const [
                Text('This is a demo'),
                Text('This is a demo 2'),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(left: 20, right: 10),
              child: TextButton(
                onPressed: () {},
                child: Text('Approved'),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            )
          ],
        );
      });
}
