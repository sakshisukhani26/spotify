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
        padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
        child: Column(children: [
          Row(
            children: [
              CircleAvatar(child: Image.network("https://cdni.iconscout.com/illustration/premium/thumb/woman-profile-8187680-6590622.png?f=webp",fit: BoxFit.cover,),radius: 25,),
              SizedBox(width: 20,),
              Text("Your Library",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(width: 40,),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search,color: Colors.white,),
                iconSize: 35,
              ),
              // SizedBox(width: 10,),
              IconButton(
                onPressed: () {},
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
              SizedBox(width: 170,),
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
