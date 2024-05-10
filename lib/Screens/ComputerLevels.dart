// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sw2project/Screens/Setting.dart';
//import 'package:sw2project/Screens/Home_Screen.dart';

class ComputerLevels extends StatelessWidget {
  const ComputerLevels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 248, 248, 219),
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.settings,
              size: 20,
              color: Color.fromARGB(255, 59, 128, 124),
            ),
            onPressed: () {              Navigator.push(context,MaterialPageRoute(builder:(context) => Settings(),),);
},
          ),
        actions: [
          Image.asset('lib/image/GTW.png'),
          SizedBox(
            width: 150,
          ),
         
        ],
      ),
 body:Center(
child:SingleChildScrollView(
  child: Column(
    children: [
      SizedBox(height: 30,),
      Row(
        children: [
          ElevatedButton.icon(
                icon: Icon(Icons.lock_open),
                onPressed: (){
              //  Navigator.push(context,MaterialPageRoute(builder:(context) => FoodLevels(),),);
                },
                label: Text('Leve 1'),
                style: 
                ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 72, 155, 151),
                  //shadowColor: Colors.black,
                  foregroundColor: Color.fromARGB(255, 248, 248, 219),
                  fixedSize: Size(200, 200),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
  
                ),
                
               ),
               SizedBox(width:5,),
               
               ElevatedButton.icon(
                icon: Icon(Icons.lock),
                onPressed: (){
              //  Navigator.push(context,MaterialPageRoute(builder:(context) => FoodLevels(),),);
                },
                label: Text('Level 2'),
                style: 
                ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 139, 141, 141),
                  //shadowColor: Colors.black,
                  foregroundColor: Color.fromARGB(255, 248, 248, 219),
                  fixedSize: Size(200, 200),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
  
                ),
               ),
               
        ], 
      ),
      SizedBox(height: 15,),
    Row(children: [
      ElevatedButton.icon(
                icon: Icon(Icons.lock),
                onPressed: (){
              //  Navigator.push(context,MaterialPageRoute(builder:(context) => FoodLevels(),),);
                },
                label: Text('Level 3'),
                style: 
                ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 139, 141, 141),
                  //shadowColor: Colors.black,
                  foregroundColor: Color.fromARGB(255, 248, 248, 219),
                  fixedSize: Size(200, 200),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
  
                ),
                
               ),
               SizedBox(width:5,),
               
               ElevatedButton.icon(
                icon: Icon(Icons.lock),
                onPressed: (){
                //Navigator.push(context,MaterialPageRoute(builder:(context) => FoodLevels(),),);
                },
                label: Text('Level 4'),
                style: 
                ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 139, 141, 141),
                  //shadowColor: Colors.black,
                  foregroundColor: Color.fromARGB(255, 248, 248, 219),
                  fixedSize: Size(200, 200),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
  
                ),
               ),
    ],), 
    ], 
  ),
),
 ),


    );
  }
}