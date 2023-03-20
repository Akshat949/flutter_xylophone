import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  void soundplayer(int? n){
    final player = AudioCache();
    player.play('note$n.wav');
  }
  buildkey({Color? color,int? n}){
   return Expanded(
      child: ConstrainedBox(
        constraints: BoxConstraints.tightFor(height: 40,width: 80),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
          ),
          onPressed: (){
            soundplayer(n);
          },
          child: (
              Text(
                '1',
                style: TextStyle(
                  color: color,
                ),
              )
          ),
        ),
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              buildkey(color: Colors.red, n:1),
              buildkey(color: Colors.orange, n:2),
              buildkey(color: Colors.yellow, n:3),
              buildkey(color: Colors.green, n:4),
              buildkey(color: Colors.teal, n:5),
              buildkey(color: Colors.blue, n:6),
              buildkey(color: Colors.purple, n:7),
            ],
          ),
        ),
      ),
    );
  }
}


