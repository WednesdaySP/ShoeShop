import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoeshop/models/cart.dart';
import 'package:shoeshop/models/shoe.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, 
  required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  void removeItemsFromCart(){
    Provider.of<Cart>(context,listen: false).removeItemsFromCart(widget.shoe);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(onPressed: removeItemsFromCart, icon: Icon(Icons.delete)),
      ),
    );
  }
}