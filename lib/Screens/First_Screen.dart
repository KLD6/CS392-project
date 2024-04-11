// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FirstScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 190,),
            Image.asset('lib/image/GTW.png'),
            ElevatedButton.icon(
              icon: Icon(Icons.play_arrow),
              onPressed: (){},
              label: Text('Play'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 72, 155, 151),
                //shadowColor: Colors.black,
                foregroundColor: Color.fromARGB(255, 248, 248, 219),
                //fixedSize: Size(300, 70)

              ),
             ),
             SizedBox(height: 200,),
             Text('Developed by imamu ciss studint',
             style: TextStyle(
              fontWeight:FontWeight.bold,
              color: const Color.fromARGB(255, 170, 170, 170),
             ),
             )
              
          ],
        ),
      )
    );
  }
}