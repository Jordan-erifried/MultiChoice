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
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'THE DICEE',
          style: TextStyle(
            fontFamily: 'Source Sans Pro',
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.5,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
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

              const SizedBox(
                height: 20.0,
              ),
            ElevatedButton(
                onPressed: () {
                  left();
                  right();
                },

                child: const Text(
                  'RUN PROGRAM',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    letterSpacing: 1.5,
                  ),
                ),
              style: ElevatedButton.styleFrom(
                primary: Colors.red.shade800,
                elevation: 5.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
