import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  AudioPlayer audioPlayer = AudioPlayer();
  // final AudioCache audioCache = AudioCache();

  void playLocal(int noteNumber) {
    final audioCache = AudioCache();
    audioCache.play('note$noteNumber.wav');
    // audioCache.play('note1.wav', mode: PlayerMode.LOW_LATENCY);
  }

  Widget buildKey(int noteNumber, MaterialColor color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playLocal(noteNumber);
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
              buildKey(1, Colors.red),
              buildKey(2, Colors.blue),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.lightGreen),
              buildKey(5, Colors.pink),
              buildKey(6, Colors.orange),
              buildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
