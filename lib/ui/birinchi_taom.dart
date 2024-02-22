import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kafe_menu/common/database/database.dart';
class FirstFood extends StatefulWidget {
  const FirstFood({super.key});

  @override
  State<FirstFood> createState() => _FirstFoodState();
}

class _FirstFoodState extends State<FirstFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('img/kafeRasm.jpg'),

          ),

        ),
        child:  GridView.count(crossAxisCount: 2
          ,children: [
            for(int i=0;i<Database.Malumotlar.length;i++)
              Database.Malumotlar[i],

          ],),
      ),
      ),



    );
  }
}
