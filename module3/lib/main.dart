import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int dice1num = 1;
  int dice2num = 1;

  void newnum(){
    setState(() {
      dice1num = Random().nextInt(6) + 1;
      dice2num = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child:
                TextButton(
                    onPressed: (){
                      newnum();
                    },
                    child: Image.asset('images/dice$dice1num.png'))),
          Expanded(
              child:
                TextButton(
                    onPressed: (){
                      newnum();
                    },
                    child: Image.asset('images/dice$dice2num.png'))),
        ],
      ),
    );
  }
}

