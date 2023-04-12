import 'package:belajar_navigasi/firstscreen.dart';
import 'package:belajar_navigasi/fourthscreen.dart';
import 'package:belajar_navigasi/secondscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
      debugShowCheckedModeBanner: false,
      routes: {'/fourth': (context) => FourthScreen()},
    );
  }
}
