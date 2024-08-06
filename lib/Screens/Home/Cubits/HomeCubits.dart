import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spotify/Screens/Home/Models/HomeModel.dart';

import 'HomeStates.dart';

class HomeCubit extends Cubit<HomeStates>{
  HomeCubit():super(HomeInitialState());
  getArtist() async{
    emit(HomeLoadingState());
    SharedPreferences prefs=await SharedPreferences.getInstance();
    String? token=prefs.getString("token");
    log("token hone"+token.toString());
    final response=await http.get(Uri.parse("https://spotify-api-blond-nu.vercel.app/spotify/getartist"),
      headers: {"Content-Type": 'application/json', "Authorization": token!},
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> responsedata = jsonDecode(response.body);
      log(responsedata.toString());
      HomeModel homeModel = HomeModel.fromJson(responsedata);
      emit(HomeLoadedState(homeModel: homeModel));
    }else if (response.statusCode == 400) {
      // Handle 400 Bad Request errors
      emit(HomeErrorStates(error: "Bad Request: ${response.reasonPhrase}"));
    } else if (response.statusCode == 500) {
      // Handle 500 Internal Server Error
      emit(HomeErrorStates(error: "Internal Server Error: ${response.reasonPhrase}"));
    }
    else {
      emit(HomeErrorStates(error: response.statusCode.toString()));
    }
  }

}