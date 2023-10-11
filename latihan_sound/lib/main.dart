import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioPlayer audioPlayer;
  String durasi = "00:00:00";

  _MyAppState1() {
    audioPlayer = AudioPlayer();
    audioPlayer.onPositionChanged.listen((duration) {
      setState(() {
        durasi = duration.toString();
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.stop);
  }

  void playSound(String url) async {
    await audioPlayer.play(url as Source);
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  void resumeSound() async {
    audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Audio Player"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  child: Text("Play"),
                  onPressed: () {
                    playSound(
                        'http://commondatastorage.googleapis.com/codeskulptor-demos/DDR_assets/Kangaroo_MusiQue_-_The_Neverwritten_Role_Playing_Game.mp3');
                  },
                ),
                ElevatedButton(
                  child: Text("Pause"),
                  onPressed: () {
                    pauseSound();
                  },
                ),
                ElevatedButton(
                  child: Text("Stop"),
                  onPressed: () {
                    stopSound();
                  },
                ),
                ElevatedButton(
                  child: Text("Resume"),
                  onPressed: () {
                    resumeSound();
                  },
                ),
                Text(
                  durasi,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          )),
    );
  }
}
