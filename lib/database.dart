import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:personal_project/functions/databasefunc.dart';
import 'package:personal_project/pages/page.dart';

class DataBaseOptions extends StatefulWidget {
  const DataBaseOptions({Key? key}) : super(key: key);

  @override
  State<DataBaseOptions> createState() => _DataBaseOptionsState();
}

class _DataBaseOptionsState extends State<DataBaseOptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data base'),
        actions: [
          IconButton(
            onPressed: (() async {
              await FirebaseAuth.instance.signOut();
            }),
            icon: Icon(Icons.logout_outlined),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                create('Vehicles', 'cars', 'Tata', 'Harrier', 8);
              },
              child: Text('Create'),
            ),
            ElevatedButton(
              onPressed: () {
                update('pets', 'dog', 'name', 'Gomesh');
              },
              child: Text('Update'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DatabasePage()),
                );
              },
              child: Text('Retrieve'),
            ),
            ElevatedButton(
              onPressed: () {
                delete('pets', 'Gomu');
              },
              child: Text('Delete'),
            ),
          ],
        ),
      ),
    );
  }
}
