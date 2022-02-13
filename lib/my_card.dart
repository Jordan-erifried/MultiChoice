import 'package:flutter/material.dart';
import 'package:multi_choice/main.dart';

void main() {
  runApp(const MyCard());
}

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
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
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                fontFamily: "Pacifico",
              ),
            ),

            Text(
              'FLUTTER DEVELOPPER',
              style: TextStyle(
                color: Colors.teal.shade100,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                fontFamily: 'Source Sans Pro',
                fontSize: 15.0,
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
              child: ListTile(
                leading: const Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '+225 07 893 123 57',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 20.0,
                    fontFamily: "Source Sans Pro",
                  ),
                ),
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.mail,
                  color: Colors.teal,
                ),
                title: Text(
                  'danerifried@gmail.com',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 20.0,
                    fontFamily: "Source Sans Pro",
                  ),
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyApp(),
                  )
                );
              },
              child: const Text(
                'GoToHomePage',
                style: TextStyle(
                  fontFamily: "Source Sans Pro",
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
