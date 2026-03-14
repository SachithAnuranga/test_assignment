
import 'package:flutter/material.dart';
import 'package:test_assignment/util/my_button.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({
  super.key,
  required this.controller,
  required this.onSave,
  required this.onCancel,
});

final TextEditingController controller;
final VoidCallback onSave;
final VoidCallback onCancel;
  
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
       backgroundColor: Colors.yellow[400],
       content: Container(
        height: 120,
        child: Column(
          children: [
            //get user input
         TextField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Add a new task"
          ),
        ),
            //buttons -> save + cancel
            SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        MyButton(
            text: "Save",
            onPressed: onSave,
          ),

          SizedBox(width: 10), // space between buttons

          MyButton(
          text: "Cancel",
          onPressed: onCancel,
        ),
        ],
      )
          ],
        ),
       ),
    );
  }
}