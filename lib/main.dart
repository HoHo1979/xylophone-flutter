import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(children: <Widget>[
              Expanded(
                child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: () {
                      playSound(1);
                    }),
              ),
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange)),
                    onPressed: () {
                      playSound(2);
                    }),
              ),
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.yellow)),
                    onPressed: () {
                      playSound(3);
                    }),
              ),
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green)),
                    onPressed: () {
                      playSound(4);
                    }),
              ),
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue)),
                    onPressed: () {
                      playSound(5);
                    }),
              ),
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.indigo)),
                    onPressed: () {
                      playSound(6);
                    }),
              ),
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.purple)),
                    onPressed: () {
                      playSound(7);
                    }),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  void playSound(int i) {
    final player = AudioCache();
    player.play('note$i.wav');
    print('$i Clicked');
  }
}
