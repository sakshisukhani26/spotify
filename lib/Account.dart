import 'package:flutter/material.dart';
import 'package:spotify/Home.dart';
import 'package:spotify/Library.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  int _currentIndex = 0;
  final List<Widget> _screens = [
    Home(),
    Library(),
    Account(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Text("Account"),
    );
  }
}
