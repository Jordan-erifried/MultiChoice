import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophoneApp extends StatelessWidget {

  void playsound(int noteNumber) {
    final player = AudioCache();
    player.play('images/note$noteNumber.wav');
  }

  Expanded buildRect({required Color color, required int noteNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
      onPressed: () {
        playsound(noteNumber);
},
  child: Text(''),
    ),
    );
}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildRect(color: Colors.red, noteNumber: 1),
            buildRect(color: Colors.orange, noteNumber: 2),
            buildRect(color: Colors.yellow, noteNumber: 3),
            buildRect(color: Colors.teal, noteNumber: 4),
            buildRect(color: Colors.green, noteNumber: 5),
            buildRect(color: Colors.blue, noteNumber: 6),
            buildRect(color: Colors.purple, noteNumber: 7),
          ],
        ),
      ),
    );
  }
}
