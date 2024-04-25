import 'package:flutter/material.dart';
import 'package:shoeshop/models/shoe.dart';

class Cart extends ChangeNotifier{
  //list of shoes for sale
  List<Shoe> shoeShop=[
    Shoe(name: "Nike Air GTX", price: '300', imagePath: "assets/images/9.jpeg", description: "Celebrates Hangul Day—an ode to the creator of the Korean alphabet."),

    Shoe(name: 'Nike Downshifter', price: '550', imagePath:  "assets/images/8.jpeg", description: "An expert eager to switch up your pace, up for the ride. "),

    Shoe(name: "NOCTA Hot Step 2", price: '210', imagePath: "assets/images/3.jpg", description: "A new and updated version of the signature Hot Step. ."),

    Shoe(name: "Nike Air Force", price: '310', imagePath: "assets/images/5.jpg", description: "Ground your look in legendary style with this hoops original."),

    Shoe(name: "NOCTA Hot", price: '510', imagePath: "assets/images/7.jpeg", description: "Comfortable, durable,timeless and fan favourite for a reason."),

    Shoe(name: "Nike Force", price: '110', imagePath: "assets/images/6.jpeg", description: "Ground your look in legendary style with this hoops original."),

    Shoe(name: "Nike Bazer", price: '310', imagePath: "assets/images/4.jpeg", description: "Comfortable, durable,timeless and fan favourite for a reason."),

    

    Shoe(name: 'Nike Shifter', price: '550', imagePath:  "assets/images/11.jpeg", description: "An expert eager to switch up your pace, up for the ride. "),

    
  ];

  //list of items in user cart

  List<Shoe> userCart=[];

  //get list of shoes for sale
  List<Shoe> getShoeList(){
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart(){
    return userCart;
  }

  //add items to cart
  void addItemsToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items from cart
  void removeItemsFromCart(shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}