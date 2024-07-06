import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify/Screens/Play/Models/playlistProvider.dart';
import 'package:spotify/Screens/Play/songPage.dart';

import 'Models/song.dart';

class Play extends StatefulWidget {
  const Play({super.key});

  @override
  State<Play> createState() => _PlayState();
}

class _PlayState extends State<Play> {
  late final dynamic playlistProvider;
  @override
  void initState(){
    super.initState();
    playlistProvider=Provider.of<PlaylistProvider>(context,listen: false);
  }
  void goToSong(int songIndex){
    playlistProvider.currentSongIndex=songIndex;
    Navigator.push(context, MaterialPageRoute(builder: (context)=>SongPage(),),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Consumer<PlaylistProvider>(
        builder:(context,value,child){
          final List<Song> playlist=value.playlist;
          return ListView.builder(
              itemCount: playlist.length,
              itemBuilder: (context,index){
                final Song song=playlist[index];
                return ListTile(
                  title: Text(song.songName),
                  subtitle: Text(song.artistName),
                  leading: Image.network(song.albumArtImagePath),
                  onTap: ()=>goToSong(index),
                );
              }
          );
        }
      ),
    );
  }
}
