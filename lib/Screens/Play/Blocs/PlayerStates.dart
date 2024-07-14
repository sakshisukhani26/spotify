
import 'package:spotify/Screens/Play/Models/PlayModel.dart';

abstract class PlayerStates{}
class PlayerInitialState extends PlayerStates{}
class PlayerLoadingState extends PlayerStates{}
class PlayerLoadedState extends PlayerStates{
  PlayModel playModel;
  PlayerLoadedState({required this.playModel});
}
class PlayerErrorStates extends PlayerStates{
  String error;
  PlayerErrorStates({required this.error});
}