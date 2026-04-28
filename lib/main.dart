import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_assignment/intro_page.dart';
import 'cart.dart';
import 'shop_page_state.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => Cart(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoe Shop',
      home: IntroPage(),
    );
  }
}