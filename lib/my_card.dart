import 'package:flutter/material.dart';

import 'main.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
             backgroundImage: AssetImage('images/erd.JPG'),
              radius: 50.0,
            ),

            const Text(
                'Jordan Erifried',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily:"Pacifico",
              ),
            ),

            Text(
              'FLUTTER DEVELOPPER',
              style: TextStyle(
                fontFamily: "SourceSansPro",
                color: Colors.teal.shade100,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(
              height: 15.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),

            Card(
              margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: const Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                    '+225 07 893 123 57',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: "SourceSansPro",
                    fontSize: 20.0
                  ),
                ),
              ),
            ),

            Card(
              margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: const Icon(
                  Icons.mail,
                  color: Colors.teal,
                ),
                title: Text(
                    'danerifried@gmail.com',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: "SourceSansPro",
                      fontSize: 20.0
                  ),
                ),
              ),
            ),

            ElevatedButton(
              child: const Text('Go To HomePage'),
              style: style,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyApp()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
