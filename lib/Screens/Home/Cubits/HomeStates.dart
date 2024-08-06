
import '../Models/HomeModel.dart';

abstract class HomeStates{}
class HomeInitialState extends HomeStates{}
class HomeLoadingState extends HomeStates{}
class HomeLoadedState extends HomeStates{
  HomeModel homeModel;
  HomeLoadedState({required this.homeModel});
}
class HomeErrorStates extends HomeStates{
  String error;
  HomeErrorStates({required this.error});
}