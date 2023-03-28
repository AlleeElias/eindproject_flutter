import 'package:assets_audio_player/assets_audio_player.dart';
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

  bool liked = false;

  var dropopties = ['Geen', 'Bruine', 'Sneeuwtje'];

  String gekozenBeer = 'Geen';

  var inputController = TextEditingController();

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
                    onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VideoPage()))
                        },
                    child: Image.asset("assets/images/profilepic.png")),
              ),
              const Expanded(
                flex: 4,
                child: Text(
                    "Sneeuwberen zijn cool. Geniet van onze sexy beren geluiden! Je kan ook op de foto klikken om een mooie berenvideo te zien :)"),
              )
            ],
          ),
          Row(
            children: const [
              Text(
                  "Hieronder kan je u mening delen over deze prachtige beesten:")
            ],
          ),
          Row(
            children: [
              const Expanded(flex: 6, child: Text("Ik hou van sneeuwberekes?")),
              Expanded(
                  flex: 4,
                  child: Checkbox(
                      value: liked,
                      onChanged: (bool? value) {
                        setState(() {
                          liked = value!;
                        });
                      }))
            ],
          ),
          Row(
            children: [
              const Expanded(
                  flex: 6, child: Text("Welke beren vindt u leuk?:")),
              Expanded(
                  flex: 4,
                  child: DropdownButton(
                    items: dropopties
                        .map((e) => DropdownMenuItem<String>(
                              child: Text(e),
                              value: e,
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        gekozenBeer = value!;
                      });
                    },
                    value: gekozenBeer,
                  )),
            ],
          ),
          Row(
            children: const [
              Text("Hieronder kan je je mening uitgebreid bespreken:")
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: TextField(
                controller: inputController,
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white30,
                    hintText: 'Geef je mening :)'),
              ))
            ],
          ),
          Row(
            children: [
              TextButton(
                  onPressed: () => setState(() {
                        inputController.clear();
                        gekozenBeer = 'Geen';
                        liked = false;
                      }),
                  child: const Text('Versturen!'))
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
    return Scaffold(
        appBar: AppBar(
          title: const Text("oopsie"),
        ),
        body: VideoPlayer(videoPlayerController));
  }
}
