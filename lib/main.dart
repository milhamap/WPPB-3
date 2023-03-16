import 'package:flutter/material.dart';
import 'package:untitled/detail_screen.dart';
import 'package:untitled/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Contacts",
      theme: ThemeData(),
      home: const MainScreen(),
    );
  }
}