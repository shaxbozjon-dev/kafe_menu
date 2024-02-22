import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kafe_menu/common/add.dart';
import 'package:kafe_menu/common/database/database.dart';
import 'package:kafe_menu/ui/birinchi_taom.dart';
import 'package:kafe_menu/ui/ikkinchi_taom.dart';
import 'package:kafe_menu/ui/saladlar.dart';



class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(


        body:
        Container(
      height: 800,
          width: 500,
          decoration: BoxDecoration(

            image: DecorationImage(

              image: AssetImage('img/kafe_rasm.jpg'),fit: BoxFit.cover,

            )
          ),
          child: Column(
            children: [

              SizedBox(height: 30),
              Center(
                child: Text("Menu",style: TextStyle(color: Colors.blueGrey,fontSize: 56,fontFamily: "Akronim"),),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 12,
                width: 12,

              ),

              Opacity(
                opacity: 0.9,
                child: TextButton(
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>FirstFood()));
                  },
                  child: SizedBox(
                    height: 140,
                    width: 140,
                    child:DecoratedBox(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('img/img_1.png'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),


                      ),

                    )


                  ),
                ),
              ),
              TextButton(
               onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (_)=>SecondFood()));
               },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Opacity(
                    opacity: 0.9,
                    child: SizedBox(
                        height: 140,
                        width: 140,
                        child:DecoratedBox(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('img/salads.jpg'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),


                          ),

                        )


                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>Salads()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Opacity(
                    opacity: 0.8,
                    child: SizedBox(
                      height: 140,
                      width: 140,
                      child:DecoratedBox(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('img/shashlik.jfif'),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20)),


                        ),

                      )


                    ),
                  ),
                ),
              ),

            ],
          ),
        ),


      ),
    );
  }
}
