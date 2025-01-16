import 'package:flutter/material.dart';
import 'package:islami/views/reciters.dart';
import 'package:islami/views/home.dart';
import 'package:islami/views/sebha.dart';
import 'package:islami/views/time.dart';
import 'package:islami/views/radio1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'JannaLT'),
      debugShowCheckedModeBanner: false,
      initialRoute: Home.route,
      routes: {
        Sebha.route: (context) => Sebha(),
        Home.route: (context) => Home(),
        Radio1.route: (context) => Radio1(),
        Reciters.route: (context) => Reciters(),
        Time.route: (context) => Time(),
      },
    );
  }
}
