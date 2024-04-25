// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shoeshop/components/bottom_navbar.dart';
import 'package:shoeshop/pages/about.dart';
import 'package:shoeshop/pages/cart_page.dart';
import 'package:shoeshop/pages/intro_page.dart';
import 'package:shoeshop/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //this selected index is to control the bottom nav bar
  int _selectedIndex=0;

  //this method will update our selected index
  //when the user taps on the bottom nav bar
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  //pages to display
  final List<Widget> _pages=[
    //shop page
    ShopPage(),

    //cart page
    CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 223, 223),
      bottomNavigationBar: BottomNavBar(
        onTabChange:(index)=>navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder:(context)=> IconButton(
            onPressed: (){
              Scaffold.of(context).openDrawer();
              },
           icon: Padding(
             padding: const EdgeInsets.only(left: 12),
             child: Icon(Icons.menu),
           )),
        ),

      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Column(
            children: [
               DrawerHeader(child: Image.asset("assets/images/logo-nike.png",color:Colors.white,scale: 2,
            ),
            ),
            // Padding(padding: EdgeInsets.symmetric(horizontal: 25),
            // child: Divider(
            //   color: Colors.grey[800],
            // ),),

            
            Padding(padding: EdgeInsets.only(left: 25),
            child: GestureDetector(
              onTap: () {
                 Navigator.push(context,MaterialPageRoute(builder: (context)=>IntroPage()));
              },
              child: ListTile(
                leading: Icon(Icons.home,
                color: Colors.white,),
                
                
                title: Text(
                  "Home",style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ),),
            Padding(padding: EdgeInsets.only(left: 25),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>AboutPage()));
              },
              child: ListTile(
                leading: Icon(Icons.info,
                color: Colors.white,),
                title: Text(
                  "About",style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ),),
            ],
           ),

            Padding(padding: EdgeInsets.only(left: 25,bottom: 25),
            child: ListTile(
              leading: Icon(Icons.logout,
              color: Colors.white,),
              title: Text(
                "Logout",style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),),
          ],
        ),

      ),
      body: _pages[_selectedIndex],

    );
  }
}