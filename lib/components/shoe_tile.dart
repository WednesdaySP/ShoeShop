import 'package:flutter/material.dart';
import 'package:shoeshop/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
   ShoeTile({super.key,required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //shoe pic
          ClipRRect(//to curve corners of card
          
            borderRadius: BorderRadius.circular(12),
             child: Image.asset(shoe.imagePath)),

          //description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(shoe.description,
            style: TextStyle(color: Colors.grey[600]),),
          ),

          // //price+ details
          Padding(
            padding: const EdgeInsets.only(left:25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //shoe name
                     Text( shoe.name,
                     style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                     ),),
            
                    SizedBox(height: 5,),
                    //price
                     Text('\$'+shoe.price,
                     style: TextStyle(
                      color: Colors.grey
                     ),),
                    ],
                ),
            
                
                GestureDetector(
                  onTap: onTap ,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12)
                      )
                    ),
                    child: Icon(Icons.add,color: Colors.white,),
                  ),
                )
              ],
            ),
          )
         

          //button to add to cart

        ],
      ),
    );
  }
}