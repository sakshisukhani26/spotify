import 'dart:convert';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import '../../Utils/BaseUrls.dart';
import '../Models/SignupModel.dart';
import 'SignupEvents.dart';
import 'SignupStates.dart';

class SignUpBloc extends Bloc<SignUpEvents,SignUpStates>{
  SignUpBloc():super(SignUpInitialState());
  signUp(String email,String password,String username,String dob)async{
    emit(SignUpLoadingState());
    final response =await http.post(Uri.parse(BaseUrls.signup),
        headers:{'Content-Type':'application/json'},
        body:jsonEncode({
          "email":email,
          "password":password,
          "username":username,
          "dob":dob
        })
    );
    log(response.toString());
    if(response.statusCode==200){
      Map<String,dynamic> responseData=jsonDecode(response.body);
      SignupModel signUpModel=SignupModel.fromJson(responseData);
      emit(SignUpLoadedState(signUpModel: signUpModel));
    }
    else{
      Map<String,dynamic> responseError=jsonDecode(response.body);
      String error=responseError['message'];
      emit(SignUpErrorStates(error: error.toString()));
    }

  }
}