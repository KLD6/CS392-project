// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 248, 248, 219),
        title: const Text('Settings'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Text("music on/off", style: TextStyle(
                  fontSize: 20,
                  fontWeight:FontWeight.bold,
                  
                ),),
                SizedBox(width: 20,),
                IconButton(
                icon: Icon(Icons.volume_off),
                onPressed: (){},
                
                style: 
                IconButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 138, 138, 138),
                  //shadowColor: Colors.black,
                  foregroundColor: Color.fromARGB(255, 248, 248, 219),
                  fixedSize: Size(50, 40),
                  
  
                ),
               ),
              ],
            ),
            Row(
              children: [
                Text("change user name", style: TextStyle(
                      fontSize: 20,
                      fontWeight:FontWeight.bold,
                      
                    ),),
              
            
                SizedBox(width: 20,),
                IconButton(
                icon: Icon(Icons.man),
                onPressed: (){},
                
                style: 
                IconButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 138, 138, 138),
                  //shadowColor: Colors.black,
                  foregroundColor: Color.fromARGB(255, 248, 248, 219),
                  fixedSize: Size(50, 40),
                  
  
                ),
               ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}