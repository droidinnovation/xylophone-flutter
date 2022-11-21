import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSoundLocal(int numberOfSound) {
    final player = AudioPlayer();
    player.play(AssetSource('note$numberOfSound.wav'));
  }

  Expanded buildKey({Color bgColor, int numberSound}) {
    return Expanded(
      child: TextButton(
        /*
        MaterialStateProperty<Color> bgColor
        style: ButtonStyle(
          backgroundColor: bgColor,
        ),*/
        style: TextButton.styleFrom(backgroundColor: bgColor),
        onPressed: () {
          playSoundLocal(numberSound);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(bgColor: Colors.red, numberSound: 1),
              buildKey(bgColor: Colors.yellow, numberSound: 2),
              buildKey(bgColor: Colors.orange, numberSound: 3),
              buildKey(bgColor: Colors.green, numberSound: 4),
              buildKey(bgColor: Colors.teal, numberSound: 5),
              buildKey(bgColor: Colors.blue, numberSound: 6),
              buildKey(bgColor: Colors.purple, numberSound: 7),
            ],
          ),
        ),
      ),
    );
  }
}
