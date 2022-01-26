import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyDicee());
}

class MyDicee extends StatefulWidget {
  const MyDicee({Key? key}) : super(key: key);

  @override
  State<MyDicee> createState() => _MyDiceeState();
}

class _MyDiceeState extends State<MyDicee> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
  void left()  {
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
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: <Widget>[
                  Expanded(
                   child: Padding(
                     padding: const EdgeInsets.all(6.0),
                     child: Image.asset('images/dice$leftDiceNumber.png'),
                   ),
                  ),

                  Expanded(
                   child: Padding(
                     padding: const EdgeInsets.all(6.0),
                     child: Image.asset('images/dice$rightDiceNumber.png'),
                   ),
                  ),
                ],
              ),

              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                child: const Text('RUN PROGRAM'),
                onPressed: () {
                  left();
                  right();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
