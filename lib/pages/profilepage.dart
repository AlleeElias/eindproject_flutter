import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late AssetsAudioPlayer _assetAudioPlayer = AssetsAudioPlayer();
  final audios = <Audio>[Audio('assets/audios/sounds.mp3')];

  @override
  void initState() {
    super.initState();
    _assetAudioPlayer = AssetsAudioPlayer.newPlayer();
    openPlayer();
  }

  void openPlayer() async {
    await _assetAudioPlayer.open(Playlist(audios: audios, startIndex: 0),
        showNotification: true, autoStart: true, loopMode: LoopMode.playlist);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: GestureDetector(
                        onTap: () =>
                        {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VideoPage()))
                        },
                        child: Image.asset("images/profilepic.jpeg")),
                  ),
                  Expanded(
                    child: Text(
                        "Sneeuwberen zijn cool. Geniet van onze sexy beren geluiden! Je kan ook op de foto klikken om een mooie berenvideo te zien :)"),
                    flex: 4,
                  )
                ],
              ),
              Row(
                children: [
                  Text("Deel jouw mening over deze prachtige beren hieronder:")
                ],
              )
            ],
          )),
    );
  }
}

class VideoPage extends StatelessWidget {
  VideoPlayerController videoPlayerController =
  VideoPlayerController.asset("assets/videos/beelden.mp4");

  @override
  Widget build(BuildContext context) {
    videoPlayerController.initialize();
    videoPlayerController.play();
    return GestureDetector(
        onDoubleTap: () => {
        Navigator.pop(context)
    },
        child: VideoPlayer(videoPlayerController));
  }
}
