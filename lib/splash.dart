import 'dart:async';

import 'package:flutter/material.dart';

import 'firstscreen.dart';

class SplashScreen2 extends StatefulWidget{
  const SplashScreen2({super.key});
  @override
  State<SplashScreen2> createState()=>_SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen2>{
  @override
  void initState() {
    Timer (Duration(seconds: 3),() {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Firstscreen()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: 100,
          backgroundImage: NetworkImage('https://play-lh.googleusercontent.com/7ynvVIRdhJNAngCg_GI7i8TtH8BqkJYmffeUHsG-mJOdzt1XLvGmbsKuc5Q1SInBjDKN=w240-h480-rw',),
        ),
      ),
      backgroundColor: Colors.black38,
    );
  }
}
