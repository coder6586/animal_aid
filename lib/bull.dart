import 'package:flutter/material.dart';
class bull extends StatefulWidget {
  @override
  _bullState createState() => _bullState();
}

class _bullState extends State<bull> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(12.0),
                  child: Image.asset('images/1.jpg'),
                  ),
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}
