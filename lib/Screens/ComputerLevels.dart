// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sw2project/Screens/Catagory.dart';
import 'package:sw2project/Screens/Setting.dart';
import 'package:sw2project/User/User.dart';
//import 'package:sw2project/Screens/Home_Screen.dart';

class ComputerLevels extends StatefulWidget {
  const ComputerLevels({super.key});

  @override
  State<ComputerLevels> createState() => _ComputerLevelsState();
}

class _ComputerLevelsState extends State<ComputerLevels> {
  static Color clrL2 = Color.fromARGB(255, 139, 141, 141);
  static Color clrL3 = Color.fromARGB(255, 139, 141, 141);
  static Color clrL4 = Color.fromARGB(255, 139, 141, 141);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 248, 248, 219),
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 20,
              color: Color.fromARGB(255, 59, 128, 124),
            ),
            onPressed: () {
             Navigator.push(context,MaterialPageRoute(builder:(context) => Catagory(),),);
            },
          ),
          actions: [
            Image.asset('lib/image/GTW.png'),
            SizedBox(
              width: 5,
            ),
            Text(
              
              'your computer Level:${User.currentLevel_computer}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 50,
            )
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
                onPressed: (){if(User.currentLevel_computer==0){
                   Navigator.push(context,MaterialPageRoute(builder:(context) => Level1(),),);
                  }
                  else if(User.currentLevel_computer>0){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('you finish this Level.'),
                    ));
                  }
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
                icon: Icon((User.currentLevel_computer >=1)? Icons.lock_open : Icons.lock),
                onPressed: (){
                  setState(() {
                    User.currentLevel_computer;
                  });
                  
                  if(User.currentLevel_computer==1){
                   Navigator.push(context,MaterialPageRoute(builder:(context) => Level2(),),);
                  }else if(User.currentLevel_computer>1){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('you finish this Level.'),
                    ));
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('you need to finish previous Level.'),
                    ));
                  }
                },
                label: Text('Level 2'),
                style: 
                ElevatedButton.styleFrom(
                  backgroundColor: clrL2,
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
                icon: Icon((User.currentLevel_computer >=2)? Icons.lock_open : Icons.lock),
                onPressed: (){
               if(User.currentLevel_computer==2){
                   Navigator.push(context,MaterialPageRoute(builder:(context) => Level3(),),);
                  }else if(User.currentLevel_computer>2){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('you finish this Level.'),
                    ));
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('you need to finish previous Level.'),
                    ));
                  }
                },
                label: Text('Level 3'),
                style: 
                ElevatedButton.styleFrom(
                  backgroundColor:clrL3,
                  foregroundColor: Color.fromARGB(255, 248, 248, 219),
                  fixedSize: Size(200, 200),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
  
                ),
                
               ),
               SizedBox(width:5,),
               
               ElevatedButton.icon(
                icon: Icon((User.currentLevel_computer >=3)? Icons.lock_open : Icons.lock),
                onPressed: (){
                  
                if(User.currentLevel_computer==3){
                   Navigator.push(context,MaterialPageRoute(builder:(context) => Level4(),),);
                  }else if(User.currentLevel_computer>3){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('you finish this Level.'),
                    ));
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('you need to finish previous Level.'),
                    ));
                  }
                },
                label: Text('Level 4'),
                style: 
                ElevatedButton.styleFrom(
                  backgroundColor: clrL4,
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

class Level1 extends StatefulWidget {

  const Level1({super.key});

  @override
  State<Level1> createState() => _Level1State();
}

class _Level1State extends State<Level1> {
  TextEditingController answerController = TextEditingController();


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
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Text(
              'F_UTT_R',
              style: TextStyle(fontSize: 50),
            ),
            TextField(
                     controller: answerController,
                    decoration: InputDecoration(
                      hintText: "Enter your answer",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                      filled: true,
                      fillColor: Color.fromARGB(255, 248, 248, 219),
                    ),
                    ),

          ElevatedButton.icon(
                  icon: Icon(Icons.send),
                  onPressed: () {
                  String enteredAnswer = answerController.text.trim();
                  if (enteredAnswer=='FLUTTER') {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => ComputerLevels())
                    );
                     setState(() {
                       User.currentLevel_computer = User.currentLevel_computer + 1;
                       _ComputerLevelsState.clrL2 = Color.fromARGB(255, 72, 155, 151);
                                        
                                        });
                  } 
                  else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Wrong answer.hint:open source framework by Google'),
                    ));
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
    );
  }
}
class Level2 extends StatefulWidget {
  const Level2({super.key});

  @override
  State<Level2> createState() => _Level2State();
}

class _Level2State extends State<Level2> {
  TextEditingController answerController = TextEditingController();
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
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Text(
              'D_RT',
              style: TextStyle(fontSize: 50),
            ),
            TextField(
                     controller: answerController,
                    decoration: InputDecoration(
                      hintText: "Enter your answer",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                      filled: true,
                      fillColor: Color.fromARGB(255, 248, 248, 219),
                    ),
                    ),

          ElevatedButton.icon(
                  icon: Icon(Icons.send),
                  onPressed: () {
                  String enteredAnswer = answerController.text.trim();
                  if (enteredAnswer=='DART') {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => ComputerLevels())
                    );
                    setState(() {
                       User.currentLevel_computer= User.currentLevel_computer + 1;  
                     _ComputerLevelsState.clrL3 = Color.fromARGB(255, 72, 155, 151);                 
                                        });
                  } 
                  else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Wrong answer.hint: Language for high quality apps'),
                    ));
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
    );
  }
}
class Level3 extends StatefulWidget {
  const Level3({super.key});

  @override
  State<Level3> createState() => _Level3State();
}

class _Level3State extends State<Level3> {
  TextEditingController answerController = TextEditingController();
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
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Text(
              'J_V_',
              style: TextStyle(fontSize: 50),
            ),
            TextField(
                     controller: answerController,
                    decoration: InputDecoration(
                      hintText: "Enter your answer",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                      filled: true,
                      fillColor: Color.fromARGB(255, 248, 248, 219),
                    ),
                    ),

          ElevatedButton.icon(
                  icon: Icon(Icons.send),
                  onPressed: () {
                  String enteredAnswer = answerController.text.trim();
                  if (enteredAnswer=='JAVA') {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => ComputerLevels())
                    );
                    setState(() {
                       User.currentLevel_computer= User.currentLevel_computer + 1;
                        _ComputerLevelsState.clrL4 = Color.fromARGB(255, 72, 155, 151);
                   
                                        });
                  } 
                  else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Wrong answer.hint:programing language designed by: James Gosling'),
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
      ),
    );
  }
}
class Level4 extends StatefulWidget {
  const Level4({super.key});

  @override
  State<Level4> createState() => _Level4State();
}

class _Level4State extends State<Level4> {
  TextEditingController answerController = TextEditingController();
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
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Text(
              'P_TH_N',
              style: TextStyle(fontSize: 50),
            ),
            TextField(
                     controller: answerController,
                    decoration: InputDecoration(
                      hintText: "Enter your answer",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                      filled: true,
                      fillColor: Color.fromARGB(255, 248, 248, 219),
                    ),
                    ),

          ElevatedButton.icon(
                  icon: Icon(Icons.send),
                  onPressed: () {
                  String enteredAnswer = answerController.text.trim();
                  if (enteredAnswer=='PYTHON') {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => ComputerLevels())
                    );
                    setState(() {
                       User.currentLevel_computer= User.currentLevel_computer + 1;
                                          
                                        });
                  } 
                  else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Wrong answer. hint:programing language designed by:Guido van Rossum'),
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
      ),
    );
  }
}