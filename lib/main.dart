import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatefulWidget {
  const Xylophone({Key key}) : super(key: key);
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  Widget getKey(Color c, int num) {
    return Expanded(
      child: FlatButton(
        color: c,
        child: Text(''),
        onPressed: () {
          final player = AudioCache();
          setState(() {
            player.play('note$num.wav');
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                getKey(Colors.red, 1),
                getKey(Colors.yellowAccent, 2),
                getKey(Colors.deepOrangeAccent, 3),
                getKey(Colors.yellow, 4),
                getKey(Colors.pink, 5),
                getKey(Colors.indigo, 6),
                getKey(Colors.cyanAccent, 7)
              ])),
        ));
  }
}
