// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:sw2project/Screens/First_Screen.dart';
import 'package:sw2project/Screens/Home_Screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Papa" ,
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFFF2F0E4)),
        scaffoldBackgroundColor: Color(0xFFF2F0E4),
        primaryColor: Colors.white,
        iconTheme: IconThemeData(color:Colors.blue),

      ),
  home: HomeScreen(),
    );
  }
}