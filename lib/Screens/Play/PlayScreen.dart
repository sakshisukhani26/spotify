import 'package:flutter/material.dart';
import 'package:spotify/Widgets/UiHelper.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({super.key});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.center,
              colors:
              [Color(0xff7f4053),Colors.black38],
            )
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 160),
                    child: UiHelper.customText("Albums from",color: Colors.white,fontsize: 15),),
                    // SizedBox(width: 20,),
                    UiHelper.iconBtn(30,icondata: Icons.menu),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 300,
                    width: 900,
                    child:Image.network("https://i.scdn.co/image/ab67616d0000b273ba5db46f4b838ef6027e6f96"),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child:
                          UiHelper.customText("Perfect",color: Colors.white,fontsize: 30),),
                          UiHelper.customText("Ed sheeran",color: Colors.white,fontsize: 15),
                        ],
                      ),
                      SizedBox(width: 230,),
                      UiHelper.iconBtn(20,icondata: Icons.add_circle_outline),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );

  }
}
