import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:test_assignment/home_screen.dart';
import 'package:test_assignment/todo_page.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    
  //init the hive
  await Hive.initFlutter();

  //opne a box
  var box = await Hive.openBox('mybox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
     
        initialRoute: '/',
        routes: {
        '/': (context)=>  HomeScreen(),
        },
        theme: ThemeData(primarySwatch: Colors.yellow),
      );
  
  }
}