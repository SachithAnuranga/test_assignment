import 'package:flutter/material.dart';
import 'package:test_assignment/component/my_bottom_nav_bar.dart';
import 'package:test_assignment/shop_page_state.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // ✅ keep state here (not inside build)
  int _selectedIndex = 0;

  // ✅ method to update index
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

      // ✅ pages list
    final List<Widget> _pages = [
      ShopPageState(),   // ✅ your real page
      Center(child: Text("Cart Page")),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0, 
      leading: Builder(builder: (context)=>IconButton(onPressed:(){Scaffold.of(context).openDrawer();}, 
      icon: const Icon(Icons.menu))),),
       drawer: Drawer(backgroundColor: Colors.grey[900], child: Column(children: [
          //logo
          DrawerHeader(child: Image.asset("lib/image/nike-logo.jpg",)),
        Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Divider(color: Colors.grey[800],), 
          ),
         const Padding(padding: EdgeInsets.only(left: 25.0), 
         child: ListTile(leading: Icon(Icons.home, color: Colors.white,), 
         title: Text('Home', style: TextStyle(color: Colors.white),) ,),
         ),
         const Padding(padding: EdgeInsets.only(left: 25.0), 
         child: ListTile(leading: Icon(Icons.info, color: Colors.white,), 
         title: Text('About', style: TextStyle(color: Colors.white),) ,),
         ),
         
          
       ],),),
      // ✅ PASS callback properly
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: navigateBottomBar,
      ),

      body: _pages[_selectedIndex],
    );
  }
}