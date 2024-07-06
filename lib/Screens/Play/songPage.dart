import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify/Screens/Play/Models/playlistProvider.dart';
import 'package:spotify/Screens/Play/NeuBox.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PlaylistProvider>(builder:(context,value,child)=>Scaffold(
      body: SafeArea(
        child: Column(
          children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
                 Text("Playlist"),
                 IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
               ],
             )
          ],
        ),
      )
    ));
  }
}
