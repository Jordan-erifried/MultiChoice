import 'dart:math';
import 'package:flutter/material.dart';

class MyDicee extends StatefulWidget {
  const MyDicee({Key? key}) : super(key: key);

  @override
  State<MyDicee> createState() => _MyDiceeState();
}

class _MyDiceeState extends State<MyDicee> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void left() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  void right() {
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
          title: Text('Dicee'),
          centerTitle: true,
        ),
        backgroundColor: Colors.red,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('images/dice$leftDiceNumber.png'),
                      )
                ),

                Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('images/dice$rightDiceNumber.png'),
                      )
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),

            ElevatedButton(
              onPressed: () {
                left();
                right();
              },
              child: Text('RUN PROGRAM'),
             style: ElevatedButton.styleFrom(
               primary: Colors.red.shade900,
               elevation: 20.0,
             ),
            ),
          ],
        ),
      ),
    );
  }
}
