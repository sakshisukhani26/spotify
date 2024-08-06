import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spotify/Screens/Play/Cubits/PlayerStates.dart';
import 'package:spotify/Screens/Play/Models/PlayModel.dart';

class PlayerCubit extends Cubit<PlayerStates>{
  PlayerCubit():super(PlayerInitialState());
  getMusic() async{
    emit(PlayerLoadingState());
    SharedPreferences prefs=await SharedPreferences.getInstance();
    String? token=prefs.getString("token");
    String? userid=prefs.getString("userid");
    log("Player "+token.toString());
    final response=await http.get(Uri.parse("https://spotify-api-gold.vercel.app/spotify/getmusics?user=$userid"),
        headers: {"Content-Type": 'application/json', "Authorization": token!},
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> responsedata = jsonDecode(response.body);
      PlayModel playModel = PlayModel.fromJson(responsedata);
      emit(PlayerLoadedState(playModel: playModel));
    }else if (response.statusCode == 400) {
      // Handle 400 Bad Request errors
      emit(PlayerErrorStates(error: "Bad Request: ${response.reasonPhrase}"));
    } else if (response.statusCode == 500) {
      // Handle 500 Internal Server Error
      emit(PlayerErrorStates(error: "Internal Server Error: ${response.reasonPhrase}"));
    }
    else {
      emit(PlayerErrorStates(error: response.statusCode.toString()));
    }
}

}