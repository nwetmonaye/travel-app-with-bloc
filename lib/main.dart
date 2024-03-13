import 'package:flutter/material.dart';
import 'package:travel_project/screen/navscreens/main_page.dart';
import 'package:travel_project/screen/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}
