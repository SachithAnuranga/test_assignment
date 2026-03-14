import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {


  final String taskName;
  final bool isTaskCompleted;
  Function(bool?)? onChanged;
  final VoidCallback? onDelete; // add this

   TodoTile({super.key, 
  required this.taskName,
  required this.isTaskCompleted,
  required this.onChanged,
  required this.onDelete
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Padding(
  padding: const EdgeInsets.all(25.0),
  child: Container(
    padding: const EdgeInsets.all(24),
    decoration: BoxDecoration(
      color: Colors.yellow,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Row(
      children: [
        Checkbox(value: isTaskCompleted, onChanged: onChanged, activeColor: Colors.red, ),
        Expanded(child: Text(taskName, style: TextStyle(decoration: isTaskCompleted? TextDecoration.lineThrough: TextDecoration.none),)),
        IconButton(icon: Icon(Icons.delete, color: Colors.red),onPressed: onDelete, ),
      ],
    ),
  ),
);
  }
  
}