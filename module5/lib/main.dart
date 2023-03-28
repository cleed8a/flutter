import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void psound(int soundnum){
    final audiocache = AudioCache();
    audiocache.play('note$soundnum.wav');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylophone App'),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                backgroundColor: Colors.red
          ),
                  onPressed: (){
                    psound(1);
                  },
                    child: Text("")
                ),
              ),
              Expanded(
                child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.orange
                    ),
                    onPressed: (){
                      psound(2);
                    },
                    child: Text("")
                ),
              ),
              Expanded(
                child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.yellow
                    ),
                    onPressed: (){
                      psound(3);
                    },
                    child: Text("")
                ),
              ),
              Expanded(
                child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.green
                    ),
                    onPressed: (){
                      psound(4);
                    },
                    child: Text("")
                ),
              ),
              Expanded(
                child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.deepPurple
                    ),
                    onPressed: (){
                      psound(5);
                    },
                    child: Text("")
                ),
              ),
              Expanded(
                child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.black
                    ),
                    onPressed: (){
                      psound(6);
                    },
                    child: Text("")
                ),
              ),
              Expanded(
                child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.purple
                    ),
                    onPressed: (){
                      psound(7);
                    },
                    child: Text("")
                ),
              ),
            ],
          )
          )
        ),
      );
  }
}
