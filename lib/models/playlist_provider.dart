import 'package:flutter/material.dart';
import 'package:music_playlist/models/song.dart';

class PlaylistProvider extends ChangeNotifier {
  // playlist of songs
  final List<Song> _playlist = [
    // song 1
    Song(
      songName: "Complicated", 
      artistName: "Matt Maltese", 
      albumArtImagePath: "assets/image/art1.png", 
      audioPath: "music/song1.mp3",
    ),

    // song 2
    Song(
      songName: "Die With A Smile", 
      artistName: "Bruno Mars and Lady Gaga", 
      albumArtImagePath: "assets/image/art2.png", 
      audioPath: "music/song1.mp3",
    ),

    // song 3
      Song(
      songName: "Soft Spot", 
      artistName: "Keshi", 
      albumArtImagePath: "assets/image/art3.png", 
      audioPath: "music/song1.mp3",
    ),
  ];

  // current song playing index
  int? _currentSongIndex;

  /*

  G E T T E R S

  */

  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;

  /*

  S E T T E R S

  */

  set currentSongIndex(int? newIndex) {
    
    // update current song index
    _currentSongIndex = newIndex;
    
    // update UI
    notifyListeners();
  }

}