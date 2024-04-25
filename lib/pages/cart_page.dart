import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoeshop/components/cart_items.dart';
import 'package:shoeshop/models/cart.dart';
import 'package:shoeshop/models/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => 
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Cart',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),

            SizedBox(height: 20,),

            Expanded(child: ListView.builder(
              itemCount: value.getUserCart().length,
              itemBuilder: (context, index) {
              //get individual shoe
              Shoe individualShoe=value.getUserCart()[index];

              //return the cart item
              return CartItem(
                shoe:individualShoe
              );
            },))
          ],
        ),
        ),
        );
  }
}