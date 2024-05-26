// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:sw2project/Screens/Catagory.dart';
//import 'package:sw2project/Screens/Home_Screen.dart';
import 'package:sw2project/User/User.dart';
class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool Mstate = true;
  Color Mcolor = Color.fromARGB(255, 139, 141, 141);
  
  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();

    Future<void> playAudio(String url) async {
      await player.play(AssetSource(url));
    }

    
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
                icon: Icon((Mstate)? Icons.volume_up : Icons.volume_off),
                onPressed: (){
                  playAudio("audio/gameM.mp3");
                  if(Mstate){
                    setState(() {
                     Mcolor = Color.fromARGB(255, 139, 141, 141);
                    Mstate = false;
                    
                    });
                    
                  }else{
                    setState(() {
                   Mcolor = Color.fromARGB(255, 72, 155, 151);
                   Mstate = true;

                    });
                    
                  }
                 
                },
                
                style: 
                IconButton.styleFrom(
                  backgroundColor:Mcolor,
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
                onPressed: (){Navigator.push(context,MaterialPageRoute(builder:(context) => ChangeName(),),);},
                
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
class ChangeName extends StatefulWidget {
  const ChangeName({super.key});

  @override
  State<ChangeName> createState() => _ChangeNameState();
}

class _ChangeNameState extends State<ChangeName> {
  TextEditingController NameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 248, 248, 219),
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.settings,
              size: 20,
              color: Color.fromARGB(255, 59, 128, 124),
            ),
            onPressed: () {Navigator.push(context,MaterialPageRoute(builder:(context) => Settings(),),);
},
          ),
        actions: [
          Image.asset('lib/image/GTW.png'),
          SizedBox(
            width: 150,
          ),
         
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 250,),
              
              TextField(
                       controller: NameController,
                      decoration: InputDecoration(
                        hintText: "Enter your new user name",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                        filled: true,
                        fillColor: Color.fromARGB(255, 248, 248, 219),
                      ),
                      ),
        
            ElevatedButton.icon(
                    icon: Icon(Icons.send),
                    onPressed: () {
                    String enteredName = NameController.text.trim();
                    if (enteredName==User.userName) {
                       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('try to enter diffrent name.'),
                      ));}
                    else if(enteredName.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Please write your new user name'),
                      ));
                    }
                    else{
                      setState(() {               
                         User.userName = enteredName;
                      });
                      Navigator.push(context,MaterialPageRoute(builder:(context) => Catagory(),),);
                    }
                    },
                    label: Text('submit'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 59, 128, 124),
                      foregroundColor: Color.fromARGB(255, 248, 248, 219),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}