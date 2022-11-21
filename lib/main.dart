import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSoundLocal(int numberOfSound) {
    final player = AudioPlayer();
    player.play(AssetSource('note$numberOfSound.wav'));
  }

  Expanded buildKey({MaterialStateProperty<Color> bgColor, int numberSound}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: bgColor,
        ),
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
              buildKey(
                  bgColor: MaterialStateProperty.all(Colors.red),
                  numberSound: 1),
              buildKey(
                  bgColor: MaterialStateProperty.all(Colors.yellow),
                  numberSound: 2),
              buildKey(
                  bgColor: MaterialStateProperty.all(Colors.orange),
                  numberSound: 3),
              buildKey(
                  bgColor: MaterialStateProperty.all(Colors.green),
                  numberSound: 4),
              buildKey(
                  bgColor: MaterialStateProperty.all(Colors.blue),
                  numberSound: 5),
              buildKey(
                  bgColor: MaterialStateProperty.all(Colors.brown),
                  numberSound: 6),
              buildKey(
                  bgColor: MaterialStateProperty.all(Colors.purple),
                  numberSound: 7),
            ],
          ),
        ),
      ),
    );
  }
}
