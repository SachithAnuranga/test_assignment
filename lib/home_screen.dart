import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:test_assignment/database/ToDoDatabase.dart';
import 'package:test_assignment/util/dialog_box.dart';
import 'package:test_assignment/util/todo_tile.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //refference the hive box
  final _myBox = Hive.box('mybox');
  Tododatabase db = Tododatabase();
  final _controller = TextEditingController();

  @override
  void initState(){
   //if this is the first time ever opening the app, then create default data
   if(_myBox.get("TODOLIST")== null){
    db.createInitialData();
   }else {
    db.loadData();
   }
  }

   void checkBoxChanged(bool? value, int index){
      setState(() {
        db.toDoList[index][1] = !  db.toDoList[index][1];
      });
   }

void createNewTask(){
  showDialog(
    context: context,
    builder: (context){
      return DialogBox(
        controller: _controller,
        onSave: saveNewTask,
        onCancel: cancelTask,
      );
    },
  );
}

void saveNewTask(){
  setState(() {
   db.toDoList.add([_controller.text, false]);
  });

  _controller.clear();
  Navigator.of(context).pop();
}

void cancelTask(){
  _controller.clear();
  Navigator.of(context).pop();
}

  @override
  Widget build(BuildContext context) {
   
     return Scaffold(
      backgroundColor: Colors.yellow[200],
       appBar: AppBar(title: Text("TO DO"), elevation: 0,),
       body: ListView.builder(
       itemCount: db.toDoList.length,
       itemBuilder: (context, index) => 
         TodoTile(taskName: db.toDoList[index][0], isTaskCompleted: db.toDoList[index][1],
          onChanged: (value)=>checkBoxChanged(value, index),
           onDelete: () {
              setState(() {
              db.toDoList.removeAt(index);
            });
  },)
       ),
        // Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        backgroundColor: Colors.yellow[400],
        child: Icon(Icons.add),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        )
      ),
      
     ); 
  
  }
}