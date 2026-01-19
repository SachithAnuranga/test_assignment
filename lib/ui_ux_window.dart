import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UiUxWindow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text("UI/UX Window"),
    ),
    body: Container(
     child:  Column(
      children: [
      ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        )
      ),
      onPressed: (){},
      child: Text("Click", style: TextStyle(fontSize: 16),)),
      
      Container(
        child: Column(
         
          children: [
       Text("Create Account", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
       SizedBox(height: 20,),
       Text("Sign up to Continue", style: TextStyle(fontSize: 16, color: Colors.grey),),
       SizedBox(height: 20,),
       TextField(decoration: InputDecoration(labelText: "Email")),
          ],
        )
      
      )
      ],)
    ),
   );
  }

}