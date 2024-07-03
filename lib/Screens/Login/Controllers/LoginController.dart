import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spotify/Screens/Navbar/navigationBar.dart';

import '../../../Widgets/UiHelper.dart';

class LoginController{
  static login(String email,String password,BuildContext context)async{
    if(email=="" || password==""){
      return UiHelper.CustomAlertBox(context, "Enter Required Field's");
    }
    else{
      SharedPreferences prefs=await SharedPreferences.getInstance();
      prefs.setBool("islogin", true);
      log("Data Added");
      Navigator.push(context, MaterialPageRoute(builder: (context)=>NavBar()));
    }
  }
}
