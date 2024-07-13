import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spotify/Screens/Navbar/navigationBar.dart';

import '../../../Widgets/UiHelper.dart';
import '../Blocs/LoginBloc.dart';

class LoginController{
  static login(String email,String password,BuildContext context)async{
    if(email=="" || password==""){
      return UiHelper.CustomAlertBox(context, "Enter Required Field's");
    }
    else{
      context.read<LoginBloc>().login(email, password);
    }
  }
}
