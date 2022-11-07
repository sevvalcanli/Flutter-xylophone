import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void SesCal(int SesNo) {
    final player = AudioCache();
    player.play('note$SesNo.wav');
  }

  Expanded ButonYapi({Color renk, int SesNo}) {
    return Expanded(
      child: FlatButton(
        color: renk,
        onPressed: () {
          SesCal(SesNo);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ButonYapi(renk: Colors.red, SesNo: 1),
              ButonYapi(renk: Colors.orange, SesNo: 2),
              ButonYapi(renk: Colors.yellow, SesNo: 3),
              ButonYapi(renk: Colors.teal, SesNo: 4),
              ButonYapi(renk: Colors.green, SesNo: 5),
              ButonYapi(renk: Colors.blue, SesNo: 6),
              ButonYapi(renk: Colors.purple, SesNo: 7),
            ],
          ),
        ),
      ),
    );
  }
}
