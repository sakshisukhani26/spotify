import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify/Screens/Albums/Album.dart';
import 'package:spotify/Screens/Artist/Artist.dart';
import 'package:spotify/Screens/Home/Home.dart';
import 'package:spotify/Screens/Library/Library.dart';
import 'package:spotify/Screens/Play/Player.dart';
import 'package:spotify/Screens/Settings/Settings.dart';
import 'package:spotify/Screens/Firstscreen/firstscreen.dart';
import 'package:spotify/Screens/Signup/signup.dart';
import 'package:spotify/Screens/Splashscreen/splash.dart';
import 'package:provider/provider.dart';
import 'package:spotify/back.dart';
import 'package:spotify/try.dart';
import 'Screens/Login/login.dart';
import 'Screens/Navbar/navigationBar.dart';

void main() {
  runApp(const MyApp()  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:NavBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
