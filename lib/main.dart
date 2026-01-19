import 'package:flutter/material.dart';
import 'package:test_assignment/home_screen.dart';
import 'package:test_assignment/ui_ux_window.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomeScreen()
    );
  }
}



