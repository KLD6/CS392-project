import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

class HomeScreen extends StatelessWidget {
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
          onPressed: () {},
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
            onPressed: () {},
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
          child: Column(
            children: [
              SizedBox(
                height: 230,
              ),
              TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your name",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                    filled: true,
                    fillColor: Color.fromARGB(255, 248, 248, 219),
                                        
                    
                  ),
                  ),
              ElevatedButton.icon(
                icon: Icon(Icons.send),
                onPressed: () {},
                label: Text('submit'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 59, 128, 124),
                  foregroundColor: Color.fromARGB(255, 248, 248, 219),
                ),
              ),
            ],
          )),
    );
  }
}
