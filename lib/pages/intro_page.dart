

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shoeshop/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
   
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 223, 223),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(25.0),
                child: Image(image:AssetImage("assets/images/logo-nike.png"),
                height:240 ,
                ),
              ),
          
              SizedBox(height: 48,),
          
              Text("Just Do It",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),),
          
              SizedBox(height: 24,),
          
              Text("Brand new sneakers and custom kicks made with premium quality",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16
              ),
              textAlign: TextAlign.center,),
              SizedBox(height: 48,),

              GestureDetector(
                onTap: ()=>
                Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage())),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(25),
                  child: 
                  Center(
                    child: Text(
                      "Shop Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}