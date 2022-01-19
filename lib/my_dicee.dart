import 'dart:math';
import 'package:flutter/material.dart';



class Dicee extends StatefulWidget {
  const Dicee({Key? key}) : super(key: key);

  @override
  State<Dicee> createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void left() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) +1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  void right() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) +1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('RANDOM DICEE NUMBER'),
        centerTitle: true,
      ),
      backgroundColor: Colors.red,
      body: Center(
        child: Row(
          children: <Widget>[

            Expanded(
             child: FlatButton(
               onPressed: () {
                 left();
               },
               child: Image.asset('images/dice$leftDiceNumber.png'),
             ),
            ),

            Expanded(
              child: FlatButton(
                onPressed: () {
                  right();
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
