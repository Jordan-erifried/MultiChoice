import 'package:flutter/material.dart';

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
            CircleAvatar(
              backgroundImage: AssetImage('images/erd.JPG'),
              radius: 50.0,
            ),

            Text(
              'JORDAN ERIFRIED'
            ),

            Text(
              'FLUTTER DEVELOPPER',
            ),

            Card(
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '+225 07 893 123 57',
                ),
              ),
            ),

            Card(
              child: ListTile(
                leading: Icon(
                  Icons.mail,
                  color: Colors.teal,
                ),
                title: Text(
                  'danerifried@gmail.com',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
