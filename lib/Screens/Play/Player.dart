import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify/Screens/Play/Cubits/PlayerCubits.dart';
import 'package:spotify/Screens/Signup/signup.dart';
import 'package:spotify/Widgets/UiHelper.dart';
import 'package:http/http.dart' as http;
import 'Cubits/PlayerStates.dart';
import 'Models/PlayModel.dart';

class AudioPlayerWidget extends StatefulWidget {
  @override
  _AudioPlayerWidgetState createState() => _AudioPlayerWidgetState();
}

class _AudioPlayerWidgetState extends State<AudioPlayerWidget> {
  final audioPlayer = AudioPlayer();
  bool _isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  bool isRepeat = false;
  Color color = Colors.white;
  List<Musics> Music=[];
  // String formatTime(int seconds) {
  //   return '${(Duration(seconds: seconds))}'.split('.')[0].padLeft(8, '0');
  // }
  String formatDuration(Duration d) {
    final min = d.inMinutes.remainder(60);
    final sec = d.inSeconds.remainder(60);
    return "${min.toString().padLeft(2, '0')}:${sec.toString().padLeft(2, '0')}";
  }

  @override
  void initState() {
    super.initState();
    context.read<PlayerCubit>().getMusic();
    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        _isPlaying = state == PlayerState.playing;
      });
    });

    // Listener for duration changes
    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    // Listener for position changes
    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
    fetchMusic();
    // Load the audio file to get its duration - Changed by Abhay
    audioPlayer.setSource(AssetSource('audio/song.mp3'));

  }

  void handleSeek(double value) {
    audioPlayer.seek(Duration(seconds: value.toInt()));
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }
  Future<void> fetchMusic() async {
    // you can replace your api link with this link
    final response = await http.get(Uri.parse('https://spotify-api-gold.vercel.app/spotify/getmusics'));
    if (response.statusCode == 200) {
      List<dynamic> jsonData = json.decode(response.body);
      setState(() {
        Music = jsonData.map((data) => Musics.fromJson(data)).toList();
        log("Here"+Music.toString());
      });
    } else {
      // Handle error if needed
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //  flexibleSpace:SafeArea(
      //    child: Padding(
      //      padding: const EdgeInsets.symmetric(vertical: 50),
      //      child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           BackButton(color: Colors.white,onPressed: (){Navigator.pop(context);},),
      //           IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.white,)),
      //         ],
      //       ),
      //    ),
      //  ),
      //   backgroundColor: Colors.black,
      //   toolbarHeight: 50,
      //   // flexibleSpace: SafeArea(
      //   //   child: Text("Audio Player",style: TextStyle(color: Colors.white),),
      //   // ),
      // ),
      body: BlocBuilder<PlayerCubit,PlayerStates>(builder: (context,state){
        if(state is PlayerLoadingState){
          return Center(child: CircularProgressIndicator(),);
        }
        else if(state is PlayerErrorStates){
          log("error : " + state.error.toString());
        }
        else if(state is PlayerLoadedState){
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      UiHelper.iconBtn(30, callback: () {
                        Navigator.pop(context);
                      },
                          icondata: Icons.keyboard_arrow_down_sharp,
                          color: Colors.white),
                      UiHelper.iconBtn(25,
                          icondata: Icons.menu, color: Colors.white),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      "https://i.scdn.co/image/ab67616d0000b273ba5db46f4b838ef6027e6f96",
                      width: double.infinity,
                      height: 350,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      UiHelper.customText(
                        "Tu hi tu",
                        color: Colors.white,
                        fontweight: FontWeight.bold,
                        fontsize: 30,
                      ),
                      UiHelper.iconBtn(30,
                          icondata: Icons.add_circle_outline_outlined,
                          color: Colors.white),
                    ],
                  ),
                  Slider(
                    min: 0,
                    max: duration.inSeconds.toDouble(),
                    value: position.inSeconds.toDouble(),
                    onChanged: (value) async {
                      final position = Duration(seconds: value.toInt());
                      audioPlayer.seek(position);
                      audioPlayer.resume();
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        UiHelper.customText(formatDuration(position),
                            color: Colors.white),
                        UiHelper.customText(formatDuration(duration - position),
                            color: Colors.white),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      UiHelper.iconBtn(
                        30,
                        icondata: Icons.repeat,
                        color: color,
                        callback: () async {
                          if (isRepeat == false) {
                            audioPlayer.setReleaseMode(ReleaseMode.loop);
                            setState(() {
                              isRepeat = true;
                              color = Colors.green;
                            });
                          } else if (isRepeat == true) {
                            setState(() {
                              isRepeat = false;
                              color = Colors.white;
                            });
                          }
                        },
                      ),
                      // IconButton(
                      //   icon:Icon(Icons.repeat,color: color,size: 30),
                      //   onPressed: () async{
                      //     if(isRepeat==false){
                      //       audioPlayer.setReleaseMode(ReleaseMode.loop);
                      //       setState(() {
                      //         isRepeat=true;
                      //         color=Colors.green;
                      //       });
                      //     }
                      //     else if(isRepeat==true)
                      //     {
                      //       setState(() {
                      //         isRepeat=false;
                      //         color=Colors.white;
                      //       });
                      //     }
                      //   },
                      // ),
                      IconButton(
                        icon: Icon(Icons.skip_previous,
                            color: Colors.white, size: 40),
                        onPressed: () async {
                          await audioPlayer.pause();
                          await audioPlayer.seek(Duration(seconds: 10));
                          await audioPlayer.resume();
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          _isPlaying ? Icons.pause_circle : Icons.play_circle,
                          color: Colors.white,
                          size: 70,
                        ),
                        onPressed: () async {
                          if (_isPlaying) {
                            await audioPlayer.pause();
                          } else {
                            // await audioPlayer.play(NetworkSource(""));
                            // log(Music[0].toString());
                            // log(playModel);
                            await audioPlayer.play(AssetSource('audio/song.mp3'));
                          }
                        },
                      ),
                      IconButton(
                        icon:
                        Icon(Icons.skip_next, color: Colors.white, size: 40),
                        onPressed: () async {
                          // audioPlayer.setPlaybackRate();
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.shuffle, color: Colors.white, size: 30),
                        onPressed: () async {
                          // audioPlayer.setPlaybackRate();
                        },
                      ),
                    ],
                  ),

                ],
              ),
            ),
          );
        }
        return Center(child: Text("No data found"),);
         }
      ),
        // ),
      backgroundColor: Colors.black,
    );
  }
}
