import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Widgets/UiHelper.dart';
import '../Albums/Album.dart';

double _appTopBarHeight = 40;
String artistName = 'Arijit Singh';

var arrContent = [
  {
    "image":
        "https://m.media-amazon.com/images/I/610FLv2T1QL._AC_UF1000,1000_QL80_.jpg",
    "songname": "Lorem Ipsum1",
    "threedot": Icons.more_vert,
  },
  {
    "image":
        "https://m.media-amazon.com/images/I/610FLv2T1QL._AC_UF1000,1000_QL80_.jpg",
    "songname": "Lorem Ipsum1",
    "threedot": Icons.more_vert,
  },
  {
    "image":
        "https://m.media-amazon.com/images/I/610FLv2T1QL._AC_UF1000,1000_QL80_.jpg",
    "songname": "Lorem Ipsum1",
    "threedot": Icons.more_vert,
  },
  {
    "image":
        "https://m.media-amazon.com/images/I/610FLv2T1QL._AC_UF1000,1000_QL80_.jpg",
    "songname": "Lorem Ipsum1",
    "threedot": Icons.more_vert,
  },
  {
    "image":
        "https://m.media-amazon.com/images/I/610FLv2T1QL._AC_UF1000,1000_QL80_.jpg",
    "songname": "Lorem Ipsum1",
    "threedot": Icons.more_vert,
  },
];

class Home2 extends StatelessWidget {
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: MyDelegate(),
              floating: true,
              pinned: true,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, index) => Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          UiHelper.customButton("About",
                              fontsize: 15,
                              fontweight: FontWeight.bold,
                              borderradius: 25,
                              bgcolor: Colors.transparent,
                              forecolor: Colors.white,
                              side: 1.0,
                              sidecolor: Colors.white, callback: () {
                            showModalBottomSheet<void>(
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    height: 350,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://i.scdn.co/image/ab6761610000e5eb0261696c5df3be99da6ed3f3"),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(16.0),
                                        topRight: Radius.circular(16.0),
                                      ),
                                    ),
                                  );
                                });
                          }),
                          SizedBox(
                            width: 10,
                          ),
                          UiHelper.customButton("Albums",
                              fontsize: 15,
                              fontweight: FontWeight.bold,
                              borderradius: 25,
                              bgcolor: Colors.transparent,
                              forecolor: Colors.white,
                              side: 1.0,
                              sidecolor: Colors.white, callback: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Album()));
                          }),
                          // TextButton(onPressed: (){}, child:UiHelper.customText("About", color:Colors.green, 20),),
                          // TextButton(onPressed: (){}, child:UiHelper.customText("Album", Colors.green, 20),),
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.shuffle,
                              color: Colors.green,
                              size: 25,
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.play_circle,
                                color: Colors.green,
                                size: 35,
                              )),
                        ],
                        // mainAxisAlignment: MainAxisAlignment.end,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      UiHelper.customText("Popular",
                          color: Colors.white, fontsize: 25),
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: UiHelper.customText((index + 1).toString(),
                                color: Colors.white, fontsize: 15),
                            title: Container(
                              height: 50,
                              width: 50,
                              child: Row(
                                children: [
                                  Image.network(
                                    arrContent[index]["image"].toString()
                                        as String,
                                    fit: BoxFit.contain,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  UiHelper.customText(
                                      arrContent[index]["songname"].toString(),
                                      color: Colors.white,
                                      fontsize: 20),
                                  // Text(arrContent[index]["songname"].toString()),
                                ],
                              ),
                            ),
                            // subtitle: Text(arrContent[index]["songname"].toString()),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.more_vert),
                              color: Colors.white,
                            ),
                          );
                        },
                        itemCount: arrContent.length,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      UiHelper.customText("Popular releases",
                          color: Colors.white, fontsize: 25),
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Container(
                              height: 50,
                              width: 50,
                              child: Row(
                                children: [
                                  Image.network(
                                    arrContent[index]["image"].toString()
                                        as String,
                                    height: 70,
                                    width: 70,
                                    fit: BoxFit.fill,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    arrContent[index]["songname"].toString(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  // Text(arrContent[index]["songname"].toString()),
                                ],
                              ),
                            ),
                          );
                        },
                        itemCount: arrContent.length,
                      ),
                      Container(
                        child: Text("About"),
                      )
                    ],
                  ),
                ),
                childCount: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(_, double shrinkOffset, bool overlapsContent) {
    var shrinkPercentage =
        min(1, shrinkOffset / (maxExtent - minExtent)).toDouble();

    return Stack(
      clipBehavior: Clip.hardEdge,
      fit: StackFit.expand,
      children: [

        //how top bar will change while scrolling the screen
        Flexible(
          // flex: 1,
          child: Stack(
            children: [
              Container(
                color: Colors.green,
                height: 40,
              ),
              Opacity(
                // opacity: .2,
                opacity: 1 - shrinkPercentage,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    alignment: FractionalOffset.topCenter,
                    image: NetworkImage(
                        'https://m.media-amazon.com/images/I/610FLv2T1QL._AC_UF1000,1000_QL80_.jpg'),
                  )),
                ),
              ),
            ],
          ),
        ),

        //its for main bar when sliding the window
        Stack(
          clipBehavior: Clip.hardEdge,
          fit: StackFit.expand,
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  //small top bar
                  Container(
                    height: _appTopBarHeight,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Flexible(
                            child: Opacity(
                              opacity: shrinkPercentage,
                              child: Text(
                                artistName,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Opacity(
                    opacity: max(1 - shrinkPercentage * 6, 0),
                    // opacity: max(1 - shrinkPercentage * 6, 0),
                    child: Column(
                      children: [
                        SizedBox(height: 60),
                        Text(
                          artistName,
                          style: TextStyle(
                              fontSize: 70,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  double get maxExtent => 200; //maximum height for the image

  @override
  double get minExtent => 50; //minimum height for the image

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => false;
}

// import 'package:flutter/material.dart';
// import 'package:spotify/Screens/Home/imagewidget.dart';
//
// import '../../Widgets/UiHelper.dart';
// import '../Albums/Album.dart';
//
// class Home2 extends StatefulWidget {
//   const Home2({super.key});
//
//   @override
//   State<Home2> createState() => _Home2State();
// }
//
// class _Home2State extends State<Home2> {
//   var arrContent = [
//     {
//       "image":
//       "https://m.media-amazon.com/images/I/610FLv2T1QL._AC_UF1000,1000_QL80_.jpg",
//       "songname": "Lorem Ipsum1",
//       "threedot": Icons.more_vert,
//     },
//     {
//       "image":
//       "https://m.media-amazon.com/images/I/610FLv2T1QL._AC_UF1000,1000_QL80_.jpg",
//       "songname": "Lorem Ipsum1",
//       "threedot": Icons.more_vert,
//     },
//     {
//       "image":
//       "https://m.media-amazon.com/images/I/610FLv2T1QL._AC_UF1000,1000_QL80_.jpg",
//       "songname": "Lorem Ipsum1",
//       "threedot": Icons.more_vert,
//     },
//     {
//       "image":
//       "https://m.media-amazon.com/images/I/610FLv2T1QL._AC_UF1000,1000_QL80_.jpg",
//       "songname": "Lorem Ipsum1",
//       "threedot": Icons.more_vert,
//     },
//     {
//       "image":
//       "https://m.media-amazon.com/images/I/610FLv2T1QL._AC_UF1000,1000_QL80_.jpg",
//       "songname": "Lorem Ipsum1",
//       "threedot": Icons.more_vert,
//     },
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             backgroundColor: Colors.black,
//             expandedHeight: 200,
//             floating: true,
//             pinned: true,
//             flexibleSpace: FlexibleSpaceBar(
//               background: Image.network("https://m.media-amazon.com/images/I/610FLv2T1QL._AC_UF1000,1000_QL80_.jpg",
//                 fit: BoxFit.fill,
//                 opacity: const AlwaysStoppedAnimation(.7),),
//               title: UiHelper.customText("Arijit Singh",color: Colors.white,fontweight: FontWeight.bold,fontsize: 40),
//             ),
//             leading: Icon(Icons.arrow_back_ios,color: Colors.white,),
//             actions: [
//               Icon(Icons.settings,color: Colors.white,),
//               SizedBox(width: 12,)
//             ],
//           ),
//           buildImages(),
//         ],
//       ),
//     );
//   }
//     Widget buildImages()=>SliverToBoxAdapter(
//       child:
//       Padding(
//         padding: const EdgeInsets.only(left: 15, top: 10),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 UiHelper.customButton("About",fontsize:  15, fontweight:FontWeight.bold, borderradius: 25, bgcolor:Colors.transparent, forecolor:Colors.white,side: 1.0,sidecolor: Colors.white,
//                     callback: () {showModalBottomSheet<void>(context: context, builder: (BuildContext context) {
//                       return Container(
//                         height: 350,
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                           image: DecorationImage(
//                             image: NetworkImage(
//                                 "https://i.scdn.co/image/ab6761610000e5eb0261696c5df3be99da6ed3f3"),
//                             fit: BoxFit.cover,
//                           ),
//                           borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(16.0),
//                             topRight: Radius.circular(16.0),
//                           ),
//                           // color: Color(0xff232f34),
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: SingleChildScrollView(
//                             child: Column(
//                               children: [
//                               ],
//                             ),
//                           ),
//                         ),
//                       );
//                     });}),
//                 SizedBox(width: 10,),
//                 UiHelper.customButton("Albums",fontsize:  15, fontweight:FontWeight.bold, borderradius: 25, bgcolor:Colors.transparent, forecolor:Colors.white,side: 1.0,sidecolor: Colors.white,callback:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Album()));}),
//                 Spacer(),
//                 IconButton(
//                   onPressed: () {},
//                   icon: Icon(
//                     Icons.shuffle,
//                     color: Colors.green,
//                     size: 25,
//                   ),
//                 ),
//                 IconButton(
//                     onPressed: () {},
//                     icon: Icon(
//                       Icons.play_circle,
//                       color: Colors.green,
//                       size: 35,
//                     )),
//               ],
//               // mainAxisAlignment: MainAxisAlignment.end,
//             ),
//             SizedBox(height: 10,),
//             UiHelper.customText("Popular", color:Colors.white,fontsize: 25),
//             ListView.builder(
//               physics: NeverScrollableScrollPhysics(),
//               shrinkWrap: true,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   leading:
//                   UiHelper.customText((index+1).toString(), color:Colors.white, fontsize: 15),
//                   title: Container(
//                     height: 50,
//                     width: 50,
//                     child: Row(
//                       children: [
//                         Image.network(
//                           arrContent[index]["image"].toString() as String,fit: BoxFit.contain,
//                         ),
//                         SizedBox(width: 15,),
//                         UiHelper.customText(arrContent[index]["songname"].toString(), color:Colors.white, fontsize: 20),
//                         // Text(arrContent[index]["songname"].toString()),
//                       ],
//                     ),
//                   ),
//                   // subtitle: Text(arrContent[index]["songname"].toString()),
//                   trailing: IconButton(onPressed: (){},icon:Icon(Icons.more_vert),
//                     color: Colors.white,
//                   ),
//                 );
//               },
//               itemCount: arrContent.length,
//             ),
//             SizedBox(height: 20,),
//             UiHelper.customText("Popular releases", color:Colors.white, fontsize: 25),
//             ListView.builder(
//               physics: NeverScrollableScrollPhysics(),
//               shrinkWrap: true,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Container(
//                     height: 50,
//                     width: 50,
//                     child: Row(
//                       children: [
//                         Image.network(
//                           arrContent[index]["image"].toString() as String,
//                           height: 70,
//                           width: 70,
//                           fit: BoxFit.fill,
//                         ),
//                         SizedBox(width: 15,),
//                         Text(arrContent[index]["songname"].toString(),style: TextStyle(color: Colors.white),),
//                         // Text(arrContent[index]["songname"].toString()),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//               itemCount: arrContent.length,
//             ),
//             Container(
//               child: Text("About"),
//             )
//           ],
//         ),
//       )
//     );
//
// }
