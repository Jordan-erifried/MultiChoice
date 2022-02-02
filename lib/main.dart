import 'package:flutter/material.dart';
import 'package:multi_choice/ask_me.dart';
import 'package:multi_choice/my_card.dart';
import 'package:multi_choice/my_dicee.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      child: Scaffold(
        body: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyCard()
                  )
                );
              },
              child: Text('MYY CARD'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyDicee(),
                  )
                );
              },
              child: Text('MYY DICEE'),
            ),

            ElevatedButton(
              onPressed: () {
               Navigator.push(
                 context,
                 MaterialPageRoute(
                   builder: (context) => AskMe(),
                 )
               );
              },
              child: Text('ASKK MEE'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AskMe(),
                    )
                );
              },
              child: Text('XYLO SNG')
            ),
          ],
        ),
      ),
    );
  }
}

