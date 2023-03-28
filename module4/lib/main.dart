import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.blue[500],
            appBar: AppBar(
              title: Text("Ask Me Anything"),
              backgroundColor: Colors.blue[900],
            ),
            body: EightBall())),
  );
}

class EightBall extends StatefulWidget {
  const EightBall({Key? key}) : super(key: key);

  @override
  State<EightBall> createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int picnum = 1;

  void setnum(){
    picnum = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            setnum();
          });
          print(picnum);
        },
        child: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Image.asset('images/ball$picnum.png'),
        ),
      ),
    );
  }
}
