import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../Navbar/navigationBar.dart';
import '../../Utils/BaseUrls.dart';
import '../Models/LoginModel.dart';
import 'LoginEvents.dart';
import 'LoginStates.dart';

class LoginBloc extends Bloc<LoginEvents,LoginStates>{
  LoginBloc():super(LoginInitialState());
  login(String email,String password)async{
    emit(LoginLoadingState());
    final response =await http.post(Uri.parse(BaseUrls.login),
        headers:{'Content-Type':'application/json'},
        body:jsonEncode({
          "email":email,
          "password":password,
        })
    );
    if(response.statusCode==200){
      Map<String,dynamic> responseData=jsonDecode(response.body);
      log(responseData.toString());
      LoginModel loginModel=LoginModel.fromJson(responseData);
      emit(LoginLoadedState(loginModel: loginModel));
      SharedPreferences prefs=await SharedPreferences.getInstance();
      prefs.setBool("islogin", true);
    }
    else{
      Map<String,dynamic> responseError=jsonDecode(response.body);
      String error=responseError['message'];
      emit(LoginErrorStates(error: error));
    }

  }
}