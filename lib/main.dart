import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffaaaaaa),
        appBar: AppBar(
          title:Text("I am Good"),
          backgroundColor: Color(0xffB42B2B),
        ),
        body: Center(
          child: Image(
            image: AssetImage('New_York.jpg'),
            height: 500,
          ),
        ),
      ),
    );
      }
}