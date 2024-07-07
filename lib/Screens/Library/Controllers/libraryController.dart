import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify/Screens/Library/library2.dart';

import '../Library.dart';

class LibraryController extends GetxController{

  Rx<List<AddPlaylist>> playLists =  Rx<List<AddPlaylist>>([]);
  late AddPlaylist playlist;
  var itemcount = 0;

  addDynamic(String playlistname) {
    log("hello");
    playlist = new AddPlaylist(playlistname: playlistname);
    playLists.value.add(playlist);
    log(playLists.value.length.toString());
    itemcount = playLists.value.length;
    // listDynamic.add(new DynamicWidget());
    // setState((){});
    // arrContent=[{
    //   "name":playlist.text.toString(),
    // }];
    // log("${listDynamic.length}");
    // Navigator.pop(context);
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}