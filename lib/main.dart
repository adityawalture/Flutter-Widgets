// ignore_for_file: prefer_const_constructors

import 'package:english_words/english_words.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:personal_project/Butt.onsWidget.dart';
import 'package:personal_project/HomePage.dart';
import 'package:personal_project/RowsColumns.dart';
import 'package:personal_project/VisaUi.dart';
import 'package:personal_project/database.dart';
import 'package:personal_project/loginpage.dart';
import 'package:personal_project/stacks.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Images.dart';
import 'ListView.dart';
import 'RandomWords.dart';
import 'alert.dart';
import 'animated_text.dart';
import 'bottomnavBar.dart';
import 'cachedImages.dart';
import 'dismissible.dart';
import 'dropdownlist.dart';
import 'forms.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Startup Name Generator',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.deepPurpleAccent),
        brightness: Brightness.light,
        primaryColor: Colors.deepPurple,
      ),
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return DataBaseOptions();
          } else {
            return LoginPageAuth();
          }
        },
      ),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => LoginPageAuth(),
      //   '/home': (context) => BottomNavBar(),
      // },
    );
  }
}
