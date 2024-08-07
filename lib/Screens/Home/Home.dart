import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:spotify/Screens/Artist/Artist.dart';
import 'package:spotify/Screens/Signup/signup.dart';
import 'package:spotify/Widgets/UiHelper.dart';
import '../Play/Player.dart';
import 'Cubits/HomeCubits.dart';
import 'Cubits/HomeStates.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isPlayerOpened = false;
  void initState() {
    super.initState();
    context.read<HomeCubit>().getArtist();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: 140.0.h, //set your height
          flexibleSpace: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UiHelper.customText("Good Morning!",
                        color: Colors.white,
                        fontsize: 30,
                        fontweight: FontWeight.bold),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Search',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: BlocBuilder<HomeCubit, HomeStates>(
          builder: (context, state) {
            if (state is HomeLoadingState) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is HomeErrorStates) {
              log(state.error.toString());
            } else if (state is HomeLoadedState) {
              return ListView(
                padding: EdgeInsets.only(left: 16.0),
                children: [

                  // Add your playlist or album widgets here
                  PlaylistSection(title: 'Recently Played',state:state.homeModel.data![0].artistname.toString()),
                  SizedBox(height: 16.0),
                  PlaylistSection(title: 'Recommended for You',state:state.homeModel.data![0].artistname.toString()),
                  SizedBox(height: 16.0),
                  PlaylistSection(title: 'Popular Playlists',state:state.homeModel.data![0].artistname.toString()),
                ],
              );
              // Container(
              //   // decoration: const BoxDecoration(
              //   //     gradient: LinearGradient(
              //   //       begin: Alignment.topLeft,
              //   //       end: Alignment.center,
              //   //       colors:
              //   //     [Color(0xff7f4053),Colors.black38],
              //   //     )
              //   // ),
              //   child: SingleChildScrollView(
              //     scrollDirection: Axis.vertical,
              //     child: Padding(
              //       padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           // SliverStickyHeaderBuilder(builder: (context,i)=>Text("Good morning")),
              //           // CustomScrollView(
              //           //   slivers: [
              //           //     SliverAppBar(
              //           //       backgroundColor: Colors.black,
              //           //       title: Text("Good morning"),
              //           //       floating: true,
              //           //       pinned: true,
              //           //     )
              //           //   ],
              //           // ),
              //           // TopBar(),
              //           // UiHelper.customText("Good Morning",color: Colors.white,fontsize: 30),
              //           // SizedBox(height: 10,),
              //           // TextField(
              //           //   decoration: InputDecoration(
              //           //     labelText: 'Search',
              //           //     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              //           //     prefixIcon: Icon(Icons.search),
              //           //   ),
              //           // ),
              //           // SizedBox(height: 30,),
              //           UiHelper.customText("Top Artist", color:Colors.white,fontsize:  20),
              //           SingleChildScrollView(
              //             scrollDirection: Axis.horizontal,
              //             child: Row(
              //               children: [
              //                 // IconButton(onPressed: (){
              //                 //   Navigator.push(context, MaterialPageRoute(builder: (context)=>AudioPlayerWidget()));
              //                 // }, icon: Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),)
              //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
              //                 SizedBox(width: 20,),
              //                 // Image.network("https://i.scdn.co/image/ab67616d0000b2735c2e8fa840241ce6adf33a35",height: 150,width: 120,),
              //                 // SizedBox(width: 20,),
              //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
              //                 SizedBox(width:20,),
              //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
              //                 SizedBox(width: 20,),
              //                 Image.network("https://https://i.scdn.co/image/ab67616d00001e021ad922dae0ba39e07cc15038",height: 150,width: 120,),
              //                 SizedBox(width: 20,),
              //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
              //               ],
              //             ),
              //           ),
              //           SizedBox(height: 30,),
              //           UiHelper.customText("India's Best",  color:Colors.white,fontsize:  20),
              //           SingleChildScrollView(
              //             scrollDirection: Axis.horizontal,
              //             child: Row(
              //               children: [
              //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
              //                 SizedBox(width: 20,),
              //                 Image.network("https://i.scdn.co/image/ab67706c0000da84c6567ac6fe1cb8b9ad541b52",height: 150,width: 120,),
              //                 SizedBox(width: 20,),
              //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
              //                 SizedBox(width:20,),
              //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
              //                 SizedBox(width: 20,),
              //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
              //                 SizedBox(width: 20,),
              //                 // Image.network("https://https://i.scdn.co/image/ab67616d0000b2735c2e8fa840241ce6adf33a35",height: 150,width: 120,),
              //               ],
              //             ),
              //           ),
              //           SizedBox(height: 30,),
              //           UiHelper.customText("Songs that you may like", color:Colors.white,fontsize:  20),
              //           SingleChildScrollView(
              //             scrollDirection: Axis.horizontal,
              //             child: Row(
              //               children: [
              //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
              //                 SizedBox(width: 20,),
              //                 Image.network("https://i.scdn.co/image/ab67706c0000da84c6567ac6fe1cb8b9ad541b52",height: 150,width: 120,),
              //                 SizedBox(width: 20,),
              //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
              //                 SizedBox(width:20,),
              //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
              //                 SizedBox(width: 20,),
              //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
              //                 SizedBox(width: 20,),
              //                 // Image.network("https://https://i.scdn.co/image/ab67616d0000b2735c2e8fa840241ce6adf33a35",height: 150,width: 120,),
              //               ],
              //             ),
              //           ),
              //           SizedBox(height: 30,),
              //           UiHelper.customText("Top Mixes",  color:Colors.white,fontsize:  20),
              //           SingleChildScrollView(
              //             scrollDirection: Axis.horizontal,
              //             child: Row(
              //               children: [
              //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
              //                 SizedBox(width: 20,),
              //                 Image.network("https://i.scdn.co/image/ab67706c0000da84c6567ac6fe1cb8b9ad541b52",height: 150,width: 120,),
              //                 SizedBox(width: 20,),
              //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
              //                 SizedBox(width:20,),
              //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
              //                 SizedBox(width: 20,),
              //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
              //                 SizedBox(width: 20,),
              //                 // Image.network("https://https://i.scdn.co/image/ab67616d0000b2735c2e8fa840241ce6adf33a35",height: 150,width: 120,),
              //               ],
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // );
            }
            return Center(
              child: Text("No data found"),
            );
          },
        )
        // Container(
        //   // decoration: const BoxDecoration(
        //   //     gradient: LinearGradient(
        //   //       begin: Alignment.topLeft,
        //   //       end: Alignment.center,
        //   //       colors:
        //   //     [Color(0xff7f4053),Colors.black38],
        //   //     )
        //   // ),
        //   child: SingleChildScrollView(
        //     scrollDirection: Axis.vertical,
        //     child: Padding(
        //       padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           // SliverStickyHeaderBuilder(builder: (context,i)=>Text("Good morning")),
        //           // CustomScrollView(
        //           //   slivers: [
        //           //     SliverAppBar(
        //           //       backgroundColor: Colors.black,
        //           //       title: Text("Good morning"),
        //           //       floating: true,
        //           //       pinned: true,
        //           //     )
        //           //   ],
        //           // ),
        //           // TopBar(),
        //           // UiHelper.customText("Good Morning",color: Colors.white,fontsize: 30),
        //           // SizedBox(height: 10,),
        //           // TextField(
        //           //   decoration: InputDecoration(
        //           //     labelText: 'Search',
        //           //     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        //           //     prefixIcon: Icon(Icons.search),
        //           //   ),
        //           // ),
        //           // SizedBox(height: 30,),
        //           UiHelper.customText("Top Artist", color:Colors.white,fontsize:  20),
        //           SingleChildScrollView(
        //             scrollDirection: Axis.horizontal,
        //             child: Row(
        //               children: [
        //                 // IconButton(onPressed: (){
        //                 //   Navigator.push(context, MaterialPageRoute(builder: (context)=>AudioPlayerWidget()));
        //                 // }, icon: Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),)
        //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
        //                 SizedBox(width: 20,),
        //                 // Image.network("https://i.scdn.co/image/ab67616d0000b2735c2e8fa840241ce6adf33a35",height: 150,width: 120,),
        //                 // SizedBox(width: 20,),
        //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
        //                 SizedBox(width:20,),
        //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
        //                 SizedBox(width: 20,),
        //                 Image.network("https://https://i.scdn.co/image/ab67616d00001e021ad922dae0ba39e07cc15038",height: 150,width: 120,),
        //                 SizedBox(width: 20,),
        //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
        //               ],
        //             ),
        //           ),
        //           SizedBox(height: 30,),
        //           UiHelper.customText("India's Best",  color:Colors.white,fontsize:  20),
        //           SingleChildScrollView(
        //             scrollDirection: Axis.horizontal,
        //             child: Row(
        //               children: [
        //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
        //                 SizedBox(width: 20,),
        //                 Image.network("https://i.scdn.co/image/ab67706c0000da84c6567ac6fe1cb8b9ad541b52",height: 150,width: 120,),
        //                 SizedBox(width: 20,),
        //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
        //                 SizedBox(width:20,),
        //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
        //                 SizedBox(width: 20,),
        //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
        //                 SizedBox(width: 20,),
        //                 // Image.network("https://https://i.scdn.co/image/ab67616d0000b2735c2e8fa840241ce6adf33a35",height: 150,width: 120,),
        //               ],
        //             ),
        //           ),
        //           SizedBox(height: 30,),
        //           UiHelper.customText("Songs that you may like", color:Colors.white,fontsize:  20),
        //           SingleChildScrollView(
        //             scrollDirection: Axis.horizontal,
        //             child: Row(
        //               children: [
        //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
        //                 SizedBox(width: 20,),
        //                 Image.network("https://i.scdn.co/image/ab67706c0000da84c6567ac6fe1cb8b9ad541b52",height: 150,width: 120,),
        //                 SizedBox(width: 20,),
        //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
        //                 SizedBox(width:20,),
        //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
        //                 SizedBox(width: 20,),
        //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
        //                 SizedBox(width: 20,),
        //                 // Image.network("https://https://i.scdn.co/image/ab67616d0000b2735c2e8fa840241ce6adf33a35",height: 150,width: 120,),
        //               ],
        //             ),
        //           ),
        //           SizedBox(height: 30,),
        //           UiHelper.customText("Top Mixes",  color:Colors.white,fontsize:  20),
        //           SingleChildScrollView(
        //             scrollDirection: Axis.horizontal,
        //             child: Row(
        //               children: [
        //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
        //                 SizedBox(width: 20,),
        //                 Image.network("https://i.scdn.co/image/ab67706c0000da84c6567ac6fe1cb8b9ad541b52",height: 150,width: 120,),
        //                 SizedBox(width: 20,),
        //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
        //                 SizedBox(width:20,),
        //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
        //                 SizedBox(width: 20,),
        //                 Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
        //                 SizedBox(width: 20,),
        //                 // Image.network("https://https://i.scdn.co/image/ab67616d0000b2735c2e8fa840241ce6adf33a35",height: 150,width: 120,),
        //               ],
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        // backgroundColor: Colors.black,
        // floatingActionButton: floatingActionItem,
        );
  }
  // get floatingActionItem {
  //   Widget floatingPlayer = GestureDetector(
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         SizedBox(width: 35,),
  //         Container(
  //           height: 125,
  //           width: 325,
  //           color: Colors.teal,
  //         ),
  //       ],
  //     ),
  //     onTap: () {
  //       setState(() {
  //         isPlayerOpened = false;
  //       });
  //     },
  //   );
  //
  //   Widget floatingActionButton = FloatingActionButton(
  //     onPressed: () {
  //       setState(() {
  //         isPlayerOpened = true;
  //       });
  //     },
  //     child: Icon(Icons.play_arrow_outlined),
  //   );
  //
  //   return AnimatedSwitcher(
  //     reverseDuration: Duration(milliseconds: 0),
  //     duration: const Duration(milliseconds: 200),
  //     transitionBuilder: (Widget child, Animation<double> animation) {
  //       return ScaleTransition(child: child, scale: animation);
  //     },
  //     child: isPlayerOpened ? floatingPlayer : floatingActionButton,
  //   );
  // }
}

class PlaylistSection extends StatelessWidget {
  final String title;

  var state;
  // final String state=state.homeModel.data![0].artistname.toString();
  PlaylistSection({required this.title, required this.state});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(height: 8.0),
        Container(
          height: 170.0.h,
          child:  ListView(
              scrollDirection: Axis.horizontal,
              children: [
                PlaylistItem(state:state),
                PlaylistItem(state: state,),
                PlaylistItem(state: state,),
                PlaylistItem(state: state,),
              ],
            ),
        ),
      ],
    );
  }
}

class PlaylistItem extends StatelessWidget {
  var state;
  PlaylistItem({required this.state});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 120.0.w,
          height: 140.0.h,
          margin: EdgeInsets.only(right: 16.0),
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.music_note,
                size: 64.0,
                color: Colors.white,
              ),
              SizedBox(height: 8.0),
              Text(
                'Playlist',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Text(
          state,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
