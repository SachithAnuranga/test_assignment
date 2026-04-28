import 'package:flutter/material.dart';
import 'package:test_assignment/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: Colors.grey[300],
    body: Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
         
          SizedBox(
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "lib/image/nike-logo.jpg",
                height: 245,
                fit: BoxFit.cover,
              ),
            ),
          ),
        
        const SizedBox(height: 50,),
      
         //title
         Text('Just Do it', style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 20),),
          
         const SizedBox(height: 24,),
      
         //sub title
         const Text('Brand new Sheakers and custom kicks made with premium quality',
           style: TextStyle(fontSize: 16, color: Colors.grey), //text style
           textAlign: TextAlign.center,
         ),
      
         const SizedBox(height: 48,),
         GestureDetector(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage())),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[900], 
              borderRadius: BorderRadius.circular(12)
            ),
            padding: const EdgeInsets.all(25),
            child: const Center(child: Text("Shop Now",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
            fontSize: 16,
            ),
            ),),
          ),
         )
        ],
      ),
    ),
   );
  }
  
}