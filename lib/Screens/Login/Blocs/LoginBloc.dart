import 'dart:convert';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
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
    log("hi");
    if(response.statusCode==200){
      SharedPreferences prefs=await SharedPreferences.getInstance();
      Map<String,dynamic> responseData=jsonDecode(response.body);
      // log("response : "+responseData.toString());
      // log("response id : "+ responseData['data']['_id']);
      String token=responseData['token'];
      String userid=responseData['data']['_id'];
      prefs.setString("token", token);
      prefs.setString("userid", userid);
      log("login"+token.toString());
      LoginModel loginModel=LoginModel.fromJson(responseData);
      emit(LoginLoadedState(loginModel: loginModel));
      prefs.setBool("islogin", true);
    }
    else{
      Map<String,dynamic> responseError=jsonDecode(response.body);
      String error=responseError['message'];
      emit(LoginErrorStates(error: error));
    }

  }
}