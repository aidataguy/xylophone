import 'package:flutter/material.dart';

import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  void playSound(int noteNum) {
    final player = AudioCache();
    player.play('note$noteNum.wav');
  }

  Expanded buildKey({Color color, int noteNum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(noteNum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "xylophone",
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              //Flat Button
              buildKey(color: Colors.deepPurple, noteNum: 1),
              buildKey(color: Colors.indigo, noteNum: 2),
              buildKey(color: Colors.blue, noteNum: 3),
              buildKey(color: Colors.green, noteNum: 4),
              buildKey(color: Colors.yellow, noteNum: 5),
              buildKey(color: Colors.orange, noteNum: 6),
              buildKey(color: Colors.red, noteNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
