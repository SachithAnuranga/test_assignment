import 'package:flutter/material.dart';
import 'package:test_assignment/main.dart';

class TodoPage extends StatefulWidget{
  
  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {

 //text editing controller to get access to the user typed
 TextEditingController textEditingController =  TextEditingController();

 String greetingMessage = "";


 //greet user method
 void greetUser(){
String userName = textEditingController.text;

  setState(() {
     greetingMessage = "Hello" +" "+ userName;
  });
 
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Padding(
         padding: const EdgeInsets.all(25.0),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
            Text(greetingMessage),
             TextField(
              controller: textEditingController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Type your name.."
              ),
              
                   ),
             ElevatedButton(onPressed: greetUser, child: Text("Tap !"))
           ],
         ),
       ),),
      
    );
  }
}