import 'package:flutter/material.dart';
import 'package:multi_choice/ask_me.dart';
import 'package:multi_choice/my_card.dart';

import 'my_dicee.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MainPage(),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyCard(),
                  )
                );
              },
              child: const Text(
                  'MY CARD',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 20.0,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
              ),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyDicee(),
                  )
                );
              },
              child:  const Text(
                  'MY DICEE',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                  fontSize: 20.0,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AskMe(),
                  )
                );
              },
              child: const Text(
                  'ASK MEE',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                  fontSize: 20.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


