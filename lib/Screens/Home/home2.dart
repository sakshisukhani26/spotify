import 'package:flutter/material.dart';
// import 'package:sticky_headers/sticky_headers/widget.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
//         child: StickyHeader(
//                 header: Container(
//                       child:Text("piyu"),
//                     // height: 50.0,
//                     // color: Colors.blueGrey[700],
//                     // padding: EdgeInsets.symmetric(horizontal: 16.0),
//                     // alignment: Alignment.centerLeft,
//                     // child: Text(
//                     //   'Header #$index',
//                     //   style: const TextStyle(color: Colors.white),
//                     // ),
//                   ),
//                 content: Text("lets see"),
//                   // Image.network(
//                   //   imageForIndex(index),
//                   //   fit: BoxFit.cover,
//                   //   width: double.infinity,
//                   //   height: 200.0,
//                   // ),
//                 ),
        ),
      );
  }
}

// import 'package:flutter/material.dart';
// import 'package:spotify/Widgets/UiHelper.dart';
// import 'package:sticky_headers/sticky_headers.dart';
//
// class Home2 extends StatefulWidget {
//   const Home2({super.key});
//
//   @override
//   State<Home2> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home2> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Text("hello")
//                 // ListView.builder(
//                 //     physics: NeverScrollableScrollPhysics(),
//                 //   shrinkWrap: true,
//                 //     itemBuilder: (context,index){
//                 //   return StickyHeader(header: Container(
//                 //     height: 50.0,
//                 //     color: Colors.blueGrey[700],
//                 //     padding: EdgeInsets.symmetric(horizontal: 16.0),
//                 //     alignment: Alignment.centerLeft,
//                 //     child: Text('Header #$index',
//                 //       style: const TextStyle(color: Colors.white),
//                 //     ),
//                 //   ),
//                 //     content: Container(
//                 //       child: Text("lavina$index"),
//                 //       // Image.network(
//                 //       //   imageForIndex(index),
//                 //       //   fit: BoxFit.cover,
//                 //       //   width: double.infinity,
//                 //       //   height: 200.0,
//                 //       // ),
//                 //     ),);
//                 // }),
//                 // SliverStickyHeaderBuilder(builder: (context,i)=>Text("Good morning")),
//                 // CustomScrollView(
//                 //   slivers: [
//                 //     SliverAppBar(
//                 //       backgroundColor: Colors.black,
//                 //       title: Text("Good morning"),
//                 //       floating: true,
//                 //       pinned: true,
//                 //     )
//                 //   ],
//                 // ),
//                 // TopBar(),
//                 // UiHelper.customText("Good Morning",color: Colors.white,fontsize: 30),
//                 // SizedBox(height: 10,),
//                 // TextField(
//                 //   decoration: InputDecoration(
//                 //     labelText: 'Search',
//                 //     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                 //     prefixIcon: Icon(Icons.search),
//                 //   ),
//                 // ),
//                 // SizedBox(height: 30,),
//                 // UiHelper.customText("Top Artist", color:Colors.white,fontsize:  20),
//                 // SingleChildScrollView(
//                 //   scrollDirection: Axis.horizontal,
//                 //   child: Row(
//                 //     children: [
//                 //       Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
//                 //       SizedBox(width: 20,),
//                 //       Image.network("https://i.scdn.co/image/ab67616d0000b2735c2e8fa840241ce6adf33a35",height: 150,width: 120,),
//                 //       SizedBox(width: 20,),
//                 //       Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
//                 //       SizedBox(width:20,),
//                 //       Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
//                 //       SizedBox(width: 20,),
//                 //       Image.network("https://https://i.scdn.co/image/ab67616d00001e021ad922dae0ba39e07cc15038",height: 150,width: 120,),
//                 //       SizedBox(width: 20,),
//                 //       Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
//                 //     ],
//                 //   ),
//                 // ),
//                 // SizedBox(height: 30,),
//                 // UiHelper.customText("India's Best",  color:Colors.white,fontsize:  20),
//                 // SingleChildScrollView(
//                 //   scrollDirection: Axis.horizontal,
//                 //   child: Row(
//                 //     children: [
//                 //       Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
//                 //       SizedBox(width: 20,),
//                 //       Image.network("https://i.scdn.co/image/ab67706c0000da84c6567ac6fe1cb8b9ad541b52",height: 150,width: 120,),
//                 //       SizedBox(width: 20,),
//                 //       Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
//                 //       SizedBox(width:20,),
//                 //       Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
//                 //       SizedBox(width: 20,),
//                 //       Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
//                 //       SizedBox(width: 20,),
//                 //       Image.network("https://https://i.scdn.co/image/ab67616d0000b2735c2e8fa840241ce6adf33a35",height: 150,width: 120,),
//                 //     ],
//                 //   ),
//                 // ),
//                 // SizedBox(height: 30,),
//                 // UiHelper.customText("Songs that you may like", color:Colors.white,fontsize:  20),
//                 // SingleChildScrollView(
//                 //   scrollDirection: Axis.horizontal,
//                 //   child: Row(
//                 //     children: [
//                 //       Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
//                 //       SizedBox(width: 20,),
//                 //       Image.network("https://i.scdn.co/image/ab67706c0000da84c6567ac6fe1cb8b9ad541b52",height: 150,width: 120,),
//                 //       SizedBox(width: 20,),
//                 //       Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
//                 //       SizedBox(width:20,),
//                 //       Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
//                 //       SizedBox(width: 20,),
//                 //       Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
//                 //       SizedBox(width: 20,),
//                 //       Image.network("https://https://i.scdn.co/image/ab67616d0000b2735c2e8fa840241ce6adf33a35",height: 150,width: 120,),
//                 //     ],
//                 //   ),
//                 // ),
//                 // SizedBox(height: 30,),
//                 // UiHelper.customText("Top Mixes",  color:Colors.white,fontsize:  20),
//                 // SingleChildScrollView(
//                 //   scrollDirection: Axis.horizontal,
//                 //   child: Row(
//                 //     children: [
//                 //       Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
//                 //       SizedBox(width: 20,),
//                 //       Image.network("https://i.scdn.co/image/ab67706c0000da84c6567ac6fe1cb8b9ad541b52",height: 150,width: 120,),
//                 //       SizedBox(width: 20,),
//                 //       Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
//                 //       SizedBox(width:20,),
//                 //       Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
//                 //       SizedBox(width: 20,),
//                 //       Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
//                 //       SizedBox(width: 20,),
//                 //       Image.network("https://https://i.scdn.co/image/ab67616d0000b2735c2e8fa840241ce6adf33a35",height: 150,width: 120,),
//                 //     ],
//                 //   ),
//                 // ),
//     //           ],
//     //         ),
//     //       ),
//     //     ),
//     //   ),
//     //   backgroundColor: Colors.black,
//
//     );
//   }
// }
//
// // ListView.builder(itemBuilder: (context, index) {
// // return StickyHeader(
// // header: Container(
// // height: 50.0,
// // color: Colors.blueGrey[700],
// // padding: EdgeInsets.symmetric(horizontal: 16.0),
// // alignment: Alignment.centerLeft,
// // child: Text('Header #$index',
// // style: const TextStyle(color: Colors.white),
// // ),
// // ),
// // content: Container(
// // child: Image.network(
// // imageForIndex(index),
// // fit: BoxFit.cover,
// // width: double.infinity,
// // height: 200.0,
// // ),
// // ),
// // );
// // });
// // }
