import 'dart:convert';
import 'dart:developer';
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
    log(token.toString());
    final response=await http.post(Uri.parse("https://spotify-api-gold.vercel.app/spotify/getmusics"),
        headers: {"Content-Type": 'application/json', "Authorization": token!},
        body: jsonEncode({"user": "6693987650262d8f38c6f9c2"})
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> responsedata = jsonDecode(response.body);
      PlayModel playModel = PlayModel.fromJson(responsedata);
      emit(PlayerLoadedState(playModel: playModel));
    } else {
      emit(PlayerErrorStates(error: response.statusCode.toString()));
    }
}

}