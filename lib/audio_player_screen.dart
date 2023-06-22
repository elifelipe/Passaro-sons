import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayerScreen extends StatefulWidget {
  final String title;
  final String audioUrl;
  final String imageUrl;

  const AudioPlayerScreen(
      {required this.title, required this.audioUrl, required this.imageUrl});

  @override
  _AudioPlayerScreenState createState() => _AudioPlayerScreenState();
}

class _AudioPlayerScreenState extends State<AudioPlayerScreen> {
  late AudioPlayer audioPlayer;
  double volume = 1.0;
  Duration position = Duration();
  Duration duration = Duration();

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    setupAudioPlayer();
  }

  void setupAudioPlayer() {
    audioPlayer.onAudioPositionChanged.listen((Duration p) {
      setState(() {
        position = p;
      });
      audioPlayer.onDurationChanged.listen((Duration d) {
        setState(() {
          duration = d;
        });
      });
    });

    // Inicia o carregamento da duração do áudio
    audioPlayer.setUrl(widget.audioUrl);
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  String formatDuration(Duration duration) {
    String minutes =
        duration.inMinutes.remainder(60).toString().padLeft(2, '0');
    String seconds =
        duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Player'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(widget.title,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 73, 230, 11), width: 3.0),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6.0),
                child: Image.network(
                  widget.imageUrl,
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              '${formatDuration(position)} / ${formatDuration(duration)}',
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    await audioPlayer.play(widget.audioUrl);
                  },
                  child: Icon(Icons.play_arrow),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () async {
                    await audioPlayer.pause();
                  },
                  child: Icon(Icons.pause),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () async {
                    await audioPlayer.stop();
                  },
                  child: Icon(Icons.stop),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text('Volume:'),
            Slider(
              value: volume,
              min: 0.0,
              max: 1.0,
              onChanged: (value) {
                setState(() {
                  volume = value;
                  audioPlayer.setVolume(volume);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
