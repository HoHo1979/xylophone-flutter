import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded createKeys(int ii, Color colors) {
    return Expanded(
      child: TextButton(
          style: TextButton.styleFrom(backgroundColor: colors),
          onPressed: () {
            playSound(i: ii);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  createKeys(1, Colors.red),
                  createKeys(2, Colors.orange),
                  createKeys(3, Colors.yellow),
                  createKeys(4, Colors.green),
                  createKeys(5, Colors.blue),
                  createKeys(6, Colors.indigo),
                  createKeys(7, Colors.purple),
                ]),
          ),
        ),
      ),
    );
  }

  void playSound({int i}) {
    final player = AudioCache();
    player.play('note$i.wav');
    print('$i Clicked');
  }
}
