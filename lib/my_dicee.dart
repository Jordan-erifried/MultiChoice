import 'package:flutter/material.dart';

class MyDicee extends StatefulWidget {

  @override
  State<MyDicee> createState() => _MyDiceeState();
}

class _MyDiceeState extends State<MyDicee> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Dicee App',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              fontFamily: 'Pacifico',
              letterSpacing: 6.5,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        backgroundColor: Colors.red,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {

                    },
                    child: Image.asset('images/dice1.png'),
                  ),
                ),

                Expanded(
                  child: FlatButton(
                    onPressed: () {

                    },
                    child: Image.asset('images/dice1.png'),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 20.0,
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red.shade500,
              ),
              onPressed: () {

              },
              child: Text('RUN PROGRAM'),
            )
          ],
        ),
      ),
    );
  }
}
