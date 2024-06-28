
import 'package:flutter/material.dart';
import 'package:spotify/Account.dart';
import 'package:spotify/Home.dart';
import 'package:spotify/Library.dart';
import 'package:spotify/Settings.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavigationbarState();
}

class _NavigationbarState extends State<NavBar> {
  @override
  int _currentIndex = 0;
  final List<Widget> _screens = [
    Home(),
    Library(),
    Settings(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          unselectedLabelStyle: const TextStyle(color: Colors.white, fontSize: 14),
          fixedColor: Colors.white,
          unselectedItemColor: Colors.white,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.white,size: 30,),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_music_outlined,color: Colors.white,size: 30,),
              label: 'Library',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,color: Colors.white,size: 30,),
              label: 'Profile',
            ),
          ],
          backgroundColor: Colors.black,
        ),

    );
  }
}
