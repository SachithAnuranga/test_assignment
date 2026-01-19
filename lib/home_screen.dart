import 'package:flutter/material.dart';
import 'package:test_assignment/engineer_screen.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          bottom: TabBar(
            onTap: (index){
              if(index == 1) {
                //Engineer tab clicked
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  EngineerScreen())); 
              }
            },
            tabs: [
            Tab(text: "Home"),
            Tab(text: "Engineer")
          ])
        ),
           body: Container(
            color: Colors.amber,
            child: const Center(
              child: Text(
                "Home Page",
                style: TextStyle(fontSize: 24),
              ),
            ),
           )
      ),
   
    
    );
  }
  
}