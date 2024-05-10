// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sw2project/Screens/ComputerLevels.dart';
import 'package:sw2project/Screens/CountryesLevels.dart';
import 'package:sw2project/Screens/FoodLevels.dart';
import 'package:sw2project/Screens/Home_Screen.dart';
import 'package:sw2project/Screens/Setting.dart';

class Catagory extends HomeScreen {
  //const Catagory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 248, 248, 219),
        elevation: 0,
        leading: 
        IconButton(
            icon: Icon(
              Icons.settings,
              size: 20,
              color: Color.fromARGB(255, 59, 128, 124),
            ),
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder:(context) => Settings(),),);
            },
          ),
        actions: [
          Image.asset('lib/image/GTW.png'),
          SizedBox(
            width: 150,
          ),
          //Text(getEntredName()),

         
        ],
      ),
 body:Center(
child:Column(
  children: [
    SizedBox(height: 80,),
    ElevatedButton.icon(
              icon: Icon(Icons.restaurant),
              onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder:(context) => FoodLevels(),),);
              },
              label: Text('FOODS'),
              style: 
              ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 72, 155, 151),
                //shadowColor: Colors.black,
                foregroundColor: Color.fromARGB(255, 248, 248, 219),
                fixedSize: Size(300, 120),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))

              ),
             ),
            SizedBox(height: 25,),
             ElevatedButton.icon(
              icon: Icon(Icons.location_city),
              onPressed: (){
             Navigator.push(context,MaterialPageRoute(builder:(context) => CountryesLevels(),),);
              },
              label: Text('COUNTRYES'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 72, 155, 151),
                //shadowColor: Colors.black,
                foregroundColor: Color.fromARGB(255, 248, 248, 219),
                fixedSize: Size(300, 120),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))

              ),
             ),

           SizedBox(height: 25,),
             ElevatedButton.icon(
              icon: Icon(Icons.computer),
              onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder:(context) => ComputerLevels(),),);
              },
              label: Text('COMPUTER'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 72, 155, 151),
                //shadowColor: Colors.black,
                foregroundColor: Color.fromARGB(255, 248, 248, 219),
                fixedSize: Size(300, 120),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))

              ),
             ),  
  ],
)
 )


    );
  }
}