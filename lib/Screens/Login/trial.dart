import 'dart:convert';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class Trial extends StatefulWidget {
  const Trial({super.key});

  @override
  State<Trial> createState() => _TrialState();
}

class _TrialState extends State<Trial> {
  void initState(){
    super.initState();
    getItem();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Container(

        )
    );
  }

  Future getItem()async{
    String documentid = "BXFj7yvqhxNnJ8Tu9YNx";
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection("trial").get();
    final _docData = querySnapshot.docs.map((doc) => doc.data()).toList();
    log(_docData.toString());
    for(int i=0 ; i<querySnapshot.docs.length; i++){
      // print(querySnapshot);
      var a=querySnapshot.docs[i];
      print(a);
    }
  }
}