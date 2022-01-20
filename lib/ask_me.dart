import 'dart:math';
import 'package:flutter/material.dart';

class AskMe extends StatefulWidget {
  const AskMe({Key? key}) : super(key: key);

  @override
  State<AskMe> createState() => _AskMeState();
}

class _AskMeState extends State<AskMe> {
  int ballChanger = 1;

  void changer() {
    setState(() {
      ballChanger = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: const Text('ASK ME ANYTHING'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  changer();
                },
                child: Image.asset('images/ball$ballChanger.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
