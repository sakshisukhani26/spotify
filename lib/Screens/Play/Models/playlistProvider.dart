import 'package:flutter/material.dart';
import 'package:spotify/Screens/Play/Models/song.dart';

class PlaylistProvider extends ChangeNotifier{
  final List<Song> _playlist=[
      Song(
          songName: 'Tu hi tu',
          artistName: 'Pritam',
          albumArtImagePath: 'https://i.scdn.co/image/ab67616d0000b273ba5db46f4b838ef6027e6f96',
          audioPath: 'audio/song.mp3',
      ),
        Song(
          songName: 'Tu hi tu',
          artistName: 'Pritam',
          albumArtImagePath: 'https://i.scdn.co/image/ab67616d0000b273ba5db46f4b838ef6027e6f96',
          audioPath: 'audio/song.mp3',
        ),
  ];
  int? _currentSongIndex;
  List<Song> get playlist=>_playlist;
  int? get currentSongIndex=>_currentSongIndex;

  set currentSongIndex(int? newIndex){
    _currentSongIndex=newIndex;
    notifyListeners();
  }
}