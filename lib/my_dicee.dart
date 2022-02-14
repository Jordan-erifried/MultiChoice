import 'dart:math';

import 'package:flutter/material.dart';

class MyDicee extends StatefulWidget {
  @override
  State<MyDicee> createState() => _MyDiceeState();
}

class _MyDiceeState extends State<MyDicee> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void leftNumb() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  void rightNumb() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
   return SafeArea(
     child: Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.red,
         centerTitle: true,
         title: const Text(
           'DICEE APP',
         ),
       ),
       backgroundColor: Colors.red,
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Row(
               children: <Widget>[
                 Expanded(
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Image.asset('images/dice$leftDiceNumber.png'),
                   ),
                 ),

                 Expanded(
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Image.asset('images/dice$rightDiceNumber.png'),
                   ),
                 ),
               ],
             ),
             const SizedBox(
               height: 20.0,
             ),
             ElevatedButton(
               onPressed: () {
                 leftNumb();
                 rightNumb();
               },
               child: const Text(
                 'RUN PROGRAM',
               ),
               style: ElevatedButton.styleFrom(
                 primary: Colors.red.shade500,
               ),
             )
           ],
         ),
       ),
     ),
   );
  }
}
