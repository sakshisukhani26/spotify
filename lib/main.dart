import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify/Screens/Albums/Album.dart';
import 'package:spotify/Screens/Artist/Artist.dart';
import 'package:spotify/Screens/Home/Home.dart';
import 'package:spotify/Screens/Library/Library.dart';
import 'package:spotify/Screens/Play/Cubits/PlayerCubits.dart';
import 'package:spotify/Screens/Play/Player.dart';
import 'package:spotify/Screens/Settings/Settings.dart';
import 'package:spotify/Screens/Firstscreen/firstscreen.dart';
import 'package:spotify/Screens/Signup/signup.dart';
import 'package:spotify/Screens/Splashscreen/splash.dart';
import 'Screens/Login/Blocs/LoginBloc.dart';
import 'Screens/Login/login.dart';
import 'Screens/Login/trial.dart';
import 'Screens/Navbar/navigationBar.dart';
import 'Screens/Signup/Blocs/SignupBloc.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp()  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_)=>SignUpBloc()),
          BlocProvider(create: (_)=>LoginBloc()),
          BlocProvider(create: (_)=>PlayerCubit()..getMusic())
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home:Trial(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
