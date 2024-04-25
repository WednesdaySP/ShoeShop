// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoeshop/components/shoe_tile.dart';
import 'package:shoeshop/models/cart.dart';
import 'package:shoeshop/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add shoes to cart
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context,listen: false).addItemsToCart(shoe);

    showDialog(context: context, builder: (context) => 
    AlertDialog(
      title: Text("Succesfully added!"),
      content: Text("Check your cart"),
    ),);

  }



  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
      children: [

        //searchbar
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Search",style: TextStyle(color: Colors.grey),
              ),
              Icon(Icons.search,color: Colors.grey,)
            ],
          ),
        ),

        //message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Text(
            "Everyone flies.... some fly longer than others",
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),

        //hot picks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Hot Picks 🔥",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),),
              Text("See all",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue))
            ],
          ),
        ),

        SizedBox(height: 10,),


        //list of shoes for sale
        Expanded(child: ListView.builder(
          itemCount: 8,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            //get shoes from shop list
          Shoe shoe=value.getShoeList()[index];

          //return the shoe
          return ShoeTile(
            shoe: shoe,
            onTap: () => addShoeToCart(shoe),);
        })),

        Padding(
          padding: const EdgeInsets.only(top: 25,left: 25),
          child: Divider(
            color: Colors.white,
          ),
        ),
      ],
    ));
  }
}