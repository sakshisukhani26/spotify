import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(left: 20),
    child: Row(
      children: [
        Text("Good Morning",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight:FontWeight.bold),),
        Spacer(),
        TextField(
          decoration: InputDecoration(
            labelText: 'Search',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            prefixIcon: Icon(Icons.search),
          ),
        ),
      ],
    ),);
  }
}
