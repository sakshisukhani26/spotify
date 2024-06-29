import 'package:flutter/material.dart';
import 'package:spotify/Account.dart';
import 'package:spotify/Home.dart';
import 'package:spotify/UiHelper.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 60,horizontal: 20),
        child: Column(children: [
          Row(
            children: [
              // CircleAvatar(child: Image.network("https://cdni.iconscout.com/illustration/premium/thumb/woman-profile-8187680-6590622.png?f=webp",fit: BoxFit.cover,),radius: 25,),
              // SizedBox(width: 20,),
              Text("Your Library",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(width: 70,),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search,color: Colors.white,),
                iconSize: 35,
              ),
              // SizedBox(width: 10,),
              IconButton(
                onPressed: () {showModalBottomSheet<void>(context: context, builder: (BuildContext context) {
                  return Container(
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                      ),
                      color: Color(0xff232f34),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("Create playlist",style: TextStyle(color: Colors.white,fontSize: 30),),
                          SizedBox(height: 30,),
                          TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                            labelText: "Enter your playlist name",
                              labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                              focusColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                          ),

                          ),
                          SizedBox(height: 30,),
                          ElevatedButton(onPressed:(){  } , child: Text("Create",style: TextStyle(fontSize: 18),),
                            style: ElevatedButton.styleFrom( shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),backgroundColor: Colors.white,foregroundColor: Colors.black),),                        ],
                      ),
                    ),
                  );
                });},
                icon: const Icon(Icons.add,color: Colors.white,),
                iconSize: 35,
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              ElevatedButton(onPressed:(){} , child: Text("Playlist",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom( shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),side: BorderSide(width: 1.0, color: Colors.white),
                ),backgroundColor: Colors.transparent,foregroundColor: Colors.white),),
              SizedBox(width: 10,),
              ElevatedButton(onPressed:(){} , child: Text("Artist",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom( shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),side: BorderSide(width: 1.0, color: Colors.white),
                ),backgroundColor: Colors.transparent,foregroundColor: Colors.white),),
              SizedBox(width: 10,),
              ElevatedButton(onPressed:(){} , child: Text("Albums",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom( shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),side: BorderSide(width: 1.0, color: Colors.white),
                ),backgroundColor: Colors.transparent,foregroundColor: Colors.white),),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text("Recently Played",style: TextStyle(color: Colors.white,fontSize: 18),),
              SizedBox(width: 140,),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.grid_view_outlined,color: Colors.white,),
                iconSize: 25,
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
            IconButton(
            onPressed: () {},
            icon:
            Image.network("https://i1.sndcdn.com/artworks-y6qitUuZoS6y8LQo-5s2pPA-t500x500.jpg",height: 70,width:70,),
              iconSize: 30,
            ),
              TextButton(onPressed: (){}, child: Text("Liked Songs",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)),
            ],
          ),

          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     IconButton(onPressed: (){
          //       Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
          //     }, icon: Column(
          //       children: [
          //         Icon(Icons.home,color: Colors.grey,),
          //         UiHelper.customText("Home", Colors.grey, 10),
          //       ],
          //     ),iconSize: 40,),
          //     SizedBox(width: 35,),
          //     IconButton(onPressed: (){
          //       Navigator.push(context, MaterialPageRoute(builder: (context)=>Library()));
          //     }, icon: Column(
          //       children: [
          //         Icon(Icons.library_music_outlined,color: Colors.grey,),
          //         UiHelper.customText("Library", Colors.grey, 10),
          //       ],
          //     ),iconSize: 40),
          //     SizedBox(width: 35,),
          //     IconButton(onPressed: (){
          //       // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
          //     }, icon: Column(
          //       children: [
          //         Icon(Icons.person,color: Colors.grey,),
          //         UiHelper.customText("Profile", Colors.grey, 10),
          //       ],
          //     ),iconSize: 40),
          //   ],
          // ),
        ],),
      ),
          backgroundColor: Colors.black,
    );
  }
}
