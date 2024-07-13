import '../Models/LoginModel.dart';

abstract class LoginStates{}
class LoginInitialState extends LoginStates{}
class LoginLoadingState extends LoginStates{}
class LoginLoadedState extends LoginStates{
  LoginModel loginModel;
  LoginLoadedState({required this.loginModel});
}
class LoginErrorStates extends LoginStates{
  String error;
  LoginErrorStates({required this.error});
}