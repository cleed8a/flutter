import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                style: TextButton.styleFrom(
              backgroundColor: Colors.red
          ),
                onPressed: (){
                  final audiocache = AudioCache();
                  audiocache.play('note1.wav');
                },
                  child: Text("Press me")
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.orange
                  ),
                  onPressed: (){
                    final audiocache = AudioCache();
                    audiocache.play('note2.wav');
                  },
                  child: Text("Press me")
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.yellow
                  ),
                  onPressed: (){
                    final audiocache = AudioCache();
                    audiocache.play('note3.wav');
                  },
                  child: Text("Press me")
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.green
                  ),
                  onPressed: (){
                    final audiocache = AudioCache();
                    audiocache.play('note4.wav');
                  },
                  child: Text("Press me")
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.deepPurple
                  ),
                  onPressed: (){
                    final audiocache = AudioCache();
                    audiocache.play('note5.wav');
                  },
                  child: Text("Press me")
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.black
                  ),
                  onPressed: (){
                    final audiocache = AudioCache();
                    audiocache.play('note6.wav');
                  },
                  child: Text("Press me")
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.purple
                  ),
                  onPressed: (){
                    final audiocache = AudioCache();
                    audiocache.play('note7.wav');
                  },
                  child: Text("Press me")
              ),
            ],
          )
          )
        ),
      );
  }
}
