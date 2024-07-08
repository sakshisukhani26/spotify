import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:spotify/Screens/Albums/Album.dart';
import 'package:spotify/Screens/Artist/Artist.dart';
import '../../Widgets/UiHelper.dart';
import 'Controllers/libraryController.dart';

class Library2 extends GetView<LibraryController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: LibraryController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Dynamic Item'),
              centerTitle: true,
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      UiHelper.customText("Your Library",
                          color: Colors.white,
                          fontsize: 25,
                          fontweight: FontWeight.bold),
                      // SizedBox(
                      //   width: 70,
                      // ),
                      Expanded(child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          UiHelper.iconBtn(
                            icondata: Icons.search, 35, color: Colors.white),
                          IconButton(
                            icon: Icon(Icons.add,color: Colors.white,size: 35,),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      backgroundColor:
                                      Colors.white.withOpacity(0.9),
                                      title: Text("Create Playlist"),
                                      content: Container(
                                        height: 150,
                                        child: Column(
                                          children: [
                                            TextField(
                                              controller: controller
                                                  .playlistTextEditingController,
                                              decoration: InputDecoration(
                                                labelText:
                                                "Create your own playlist",
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            SizedBox(
                                              height: 50,
                                              child: UiHelper.customButton("Create",
                                                  bgcolor: Colors.black,
                                                  forecolor:
                                                  Colors.white.withOpacity(0.9),
                                                  fontsize: 20,
                                                  borderradius: 10, callback: () {
                                                    controller.addDynamic(
                                                        controller
                                                            .playlistTextEditingController
                                                            .text,
                                                        context);
                                                  }),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            },
                          ),
                        ],
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      UiHelper.customButton("Playlist",
                          fontsize: 15,
                          fontweight: FontWeight.bold,
                          borderradius: 25,
                          bgcolor: Colors.transparent,
                          forecolor: Colors.white,
                          side: 1.0,
                          sidecolor: Colors.white,callback: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>Artist()));}),
                      SizedBox(
                        width: 10,
                      ),
                      UiHelper.customButton("Artist",
                          fontsize: 15,
                          fontweight: FontWeight.bold,
                          borderradius: 25,
                          bgcolor: Colors.transparent,
                          forecolor: Colors.white,
                          side: 1.0,
                          sidecolor: Colors.white,callback: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Artist()));}),
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
                          sidecolor: Colors.white,callback: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Album()));}),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      UiHelper.customText("Recently Played",
                          color: Colors.white, fontsize: 18),
                      // SizedBox(
                      //   width: 140,
                      // ),
                      Expanded(
                        child: UiHelper.iconBtn(
                          icondata: Icons.grid_view_outlined,
                          25,
                          color: Colors.white),)

                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      UiHelper.iconBtn(30,
                          color: Colors.white,
                          image: true,
                          imagePath:
                              "https://i1.sndcdn.com/artworks-y6qitUuZoS6y8LQo-5s2pPA-t500x500.jpg",
                          height: 70,
                          width: 70),
                      UiHelper.customTextButton("Liked Songs",
                          color: Colors.white,
                          fontweight: FontWeight.bold,
                          fontsize: 18),
                    ],
                  ),
                  Expanded(
                    child: Obx(() => ListView.builder(
                          itemCount: controller.itemCount.value,
                          itemBuilder: ((context, index) {
                            return Row(
                              children: [
                                UiHelper.iconBtn(30,
                                    color: Colors.white,
                                    image: true,
                                    imagePath:
                                    "https://i1.sndcdn.com/artworks-y6qitUuZoS6y8LQo-5s2pPA-t500x500.jpg",
                                    height: 70,
                                    width: 70),
                                UiHelper.customTextButton(controller
                                    .playlists.value[index].playlistname!,
                                    color: Colors.white,
                                    fontweight: FontWeight.bold,
                                    fontsize: 18),
                                GestureDetector(
                                  child: const Icon(
                                    Icons.delete,
                                    color: Colors.white,
                                  ),
                                  onTap: () {
                                    controller.removeDynamic(index);
                                  },
                                ),
                              ],
                            );
                          }),
                        )),
                  )
                ],
              ),
            ),
            backgroundColor: Colors.black,
          );
        });
  }

  const Library2({Key? key}) : super(key: key);
}
