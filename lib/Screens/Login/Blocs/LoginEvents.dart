abstract class LoginEvents{}
class LoginUserEvents extends LoginEvents{
  String email;
  String password;
  LoginUserEvents({required this.email,required this.password});
}