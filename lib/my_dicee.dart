import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyDicee());
}

class MyDicee extends StatefulWidget {


  @override
  State<MyDicee> createState() => _MyDiceeState();
}

class _MyDiceeState extends State<MyDicee> {
  @override
  Widget build(BuildContext context) {
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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

            SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {
                leftNumb();
                rightNumb();
              },
              child: Text(
                'RUN PROGRAM',
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.red.shade500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
