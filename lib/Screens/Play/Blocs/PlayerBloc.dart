import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import '../../Utils/BaseUrls.dart';
import '../Models/PlayModel.dart';
import 'PlayerEvents.dart';
import 'PlayerStates.dart';

class PlayerBloc extends Bloc<PlayerEvents,PlayerStates>{
  PlayerBloc():super(PlayerInitialState());
  Player(String music)async{
    emit(PlayerLoadingState());
    final response =await http.post(Uri.parse(BaseUrls.player),
        headers:{'Content-Type':'application/json'},
        body:jsonEncode({
          "music":music,
        })
    );
    if(response.statusCode==200){
      Map<String,dynamic> responseData=jsonDecode(response.body);
      PlayModel playModel=PlayModel.fromJson(responseData);
      emit(PlayerLoadedState(playModel: playModel));
    }
    else{
      Map<String,dynamic> responseError=jsonDecode(response.body);
      String error=responseError['message'];
      emit(PlayerErrorStates(error: error));
    }

  }
}