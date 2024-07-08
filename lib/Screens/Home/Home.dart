import 'package:flutter/material.dart';
import 'package:spotify/Widgets/UiHelper.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 145.0, //set your height
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
                  SizedBox(height: 10,),
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
      body: Container(
        // decoration: const BoxDecoration(
        //     gradient: LinearGradient(
        //       begin: Alignment.topLeft,
        //       end: Alignment.center,
        //       colors:
        //     [Color(0xff7f4053),Colors.black38],
        //     )
        // ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UiHelper.customText("Top Artist",
                    color: Colors.white, fontsize: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.network(
                        "https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",
                        height: 150,
                        width: 120,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.network(
                        "https://i.scdn.co/image/ab67616d0000b2735c2e8fa840241ce6adf33a35",
                        height: 150,
                        width: 120,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.network(
                        "https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",
                        height: 150,
                        width: 120,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.network(
                        "https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",
                        height: 150,
                        width: 120,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.network(
                        "https://https://i.scdn.co/image/ab67616d00001e021ad922dae0ba39e07cc15038",
                        height: 150,
                        width: 120,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.network(
                        "https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",
                        height: 150,
                        width: 120,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                UiHelper.customText("India's Best",
                    color: Colors.white, fontsize: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.network(
                        "https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",
                        height: 150,
                        width: 120,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.network(
                        "https://i.scdn.co/image/ab67706c0000da84c6567ac6fe1cb8b9ad541b52",
                        height: 150,
                        width: 120,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.network(
                        "https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",
                        height: 150,
                        width: 120,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.network(
                        "https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",
                        height: 150,
                        width: 120,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.network(
                        "https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",
                        height: 150,
                        width: 120,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.network(
                        "https://https://i.scdn.co/image/ab67616d0000b2735c2e8fa840241ce6adf33a35",
                        height: 150,
                        width: 120,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                UiHelper.customText("Songs that you may like",
                    color: Colors.white, fontsize: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.network(
                        "https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",
                        height: 150,
                        width: 120,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.network(
                        "https://i.scdn.co/image/ab67706c0000da84c6567ac6fe1cb8b9ad541b52",
                        height: 150,
                        width: 120,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.network(
                        "https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",
                        height: 150,
                        width: 120,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.network(
                        "https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",
                        height: 150,
                        width: 120,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.network(
                        "https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",
                        height: 150,
                        width: 120,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.network(
                        "https://https://i.scdn.co/image/ab67616d0000b2735c2e8fa840241ce6adf33a35",
                        height: 150,
                        width: 120,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                UiHelper.customText("Top Mixes",
                    color: Colors.white, fontsize: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.network(
                        "https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",
                        height: 150,
                        width: 120,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.network(
                        "https://i.scdn.co/image/ab67706c0000da84c6567ac6fe1cb8b9ad541b52",
                        height: 150,
                        width: 120,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.network(
                        "https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",
                        height: 150,
                        width: 120,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.network(
                        "https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",
                        height: 150,
                        width: 120,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.network(
                        "https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",
                        height: 150,
                        width: 120,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.network(
                        "https://https://i.scdn.co/image/ab67616d0000b2735c2e8fa840241ce6adf33a35",
                        height: 150,
                        width: 120,
                      ),
                    ],
                  ),
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
