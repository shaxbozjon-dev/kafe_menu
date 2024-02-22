import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Product extends StatefulWidget {
  String name;
  String picture;
  double price;
   Product({required this.price, required this.picture, required this.name,super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [

        Stack(
          children: [
            Container(
              height: 120,
              width: 170,
              decoration: BoxDecoration(
                border: Border.all(color: CupertinoColors.systemBackground,width: 5),

              ),
              child: Center(child: Text(widget.name,style: TextStyle(color: Colors.white,fontFamily: "Akronim",fontSize: 24),),),
            ),

            Padding(
              padding: EdgeInsets.only(top: 74,left: 48),
              child: Row(
                children: [

                  Image.asset(widget.picture,height: 80,width: 80,),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    children: [
                      SizedBox(height: 40,),
                      SizedBox(


   child: DecoratedBox(
     decoration: BoxDecoration(
       border: Border.all(width: 1,color: Colors.white),

     ),
     child: Text('${widget.price}00',style: TextStyle(color: Colors.white,fontSize: 10),),
   ),
                      ),
                    ],
                  ),

                ],
              ),
            ),

          ],

        ),


      ],
    );
  }
}
