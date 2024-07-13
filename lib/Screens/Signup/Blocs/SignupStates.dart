import '../Models/SignupModel.dart';

abstract class SignUpStates{}
class SignUpInitialState extends SignUpStates{}
class SignUpLoadingState extends SignUpStates{}
class SignUpLoadedState extends SignUpStates{
  SignupModel signUpModel;
  SignUpLoadedState({required this.signUpModel});
}
class SignUpErrorStates extends SignUpStates{
  String error;
  SignUpErrorStates({required this.error});
}