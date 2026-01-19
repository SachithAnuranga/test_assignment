import 'package:flutter/material.dart';

class EngineerScreen extends StatelessWidget{
  const EngineerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Engineer"),),
      body:  Center(
       child: Card (
        elevation: 6,
         shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),
          child: Container(
           width: 320,
           padding: const EdgeInsets.all(20),
           child: Column(mainAxisSize: MainAxisSize.min,
           children: [
            const CircleAvatar(
              radius: 40,
              child: Icon(Icons.person),
            ),
            SizedBox(height: 20,),
            const Text("Sachith Perera", style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ), ),
            SizedBox(height: 20,),
            const Text("Software Engineer", style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ), ),
            const Text("Sri lanka", style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),),
            const SizedBox(height: 16),
            Row(
              children: [
                 SizedBox(width: 35,),
                ElevatedButton(onPressed: (){}, 
                child: const Text("Follow")),
                SizedBox(width: 10,),
                OutlinedButton(onPressed: (){},
                child: const Text("Message"))
              ],
            )
           ],),
          ),
      
       ),
      ),
    );
  }
  
}