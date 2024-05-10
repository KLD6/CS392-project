// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:sw2project/Screens/Catagory.dart';
import 'package:sw2project/Screens/First_Screen.dart';
import 'package:sw2project/Screens/Setting.dart';
import 'package:sw2project/User/User.dart';

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
 TextEditingController nameController = TextEditingController();

  HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(0, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 248, 248, 219),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 20,
            color: Color.fromARGB(255, 59, 128, 124),
          ),
          onPressed: ( ) 
          {              Navigator.push(context,MaterialPageRoute(builder:(context) => FirstScreen(),),);},
        ),
        actions: [
          Image.asset('lib/image/GTW.png'),
          SizedBox(
            width: 100,
          ),
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
        ],
      ),
      body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/image/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
               
                TextField(
                     controller: nameController,
                    decoration: InputDecoration(
                      hintText: "Enter your name",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                      filled: true,
                      fillColor: Color.fromARGB(255, 248, 248, 219),
                      
                      
                                          
                      
                    ),
                   

                    ),
                ElevatedButton.icon(
                  icon: Icon(Icons.send),
                  onPressed: () {
                  String enteredName = nameController.text.trim();
                  if (enteredName.isNotEmpty) {
                    User.userName = enteredName;
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Catagory()),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Please enter your name.'),
                    ));
                  }
                    //Navigator.push(context,MaterialPageRoute(builder:(context) => Catagory(),),);
                  },
                  label: Text('submit'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 59, 128, 124),
                    foregroundColor: Color.fromARGB(255, 248, 248, 219),
                  ),
                ),
                
              ],
            ),
          )),
    );
  }
   String getEntredName(){
String EnterdName = nameController.text;

return EnterdName;
 }
}
