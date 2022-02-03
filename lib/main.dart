import 'package:flutter/material.dart';
import 'package:multi_choice/ask_me.dart';
import 'package:multi_choice/my_card.dart';
import 'package:multi_choice/my_dicee.dart';
import 'package:multi_choice/xylophone.dart';

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
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.teal,
            ),
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
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
            ),
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
            style: ElevatedButton.styleFrom(
              primary: Colors.redAccent,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => XylophoneApp(),
                  )
              );
            },
            child: Text('XYLO SNG')
          ),
        ],
      ),
    );
  }
}

