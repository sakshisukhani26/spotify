import 'dart:developer';

import 'package:datetime_picker_formfield_new/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spotify/Account.dart';
import 'package:spotify/Home.dart';
import 'package:spotify/UiHelper.dart';
import 'package:intl/intl.dart';
import 'package:spotify/navigationBar.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  final format= DateFormat('yyy-mm-dd');
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 60),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network("https://play-lh.googleusercontent.com/7ynvVIRdhJNAngCg_GI7i8TtH8BqkJYmffeUHsG-mJOdzt1XLvGmbsKuc5Q1SInBjDKN=w240-h480-rw",height: 120,width: 120,),
              Center(child: Text("Spotify",style: TextStyle(color: Colors.white,fontSize: 40,))),
              SizedBox(height: 60,),
              UiHelper.customTextField(emailController, "enter your email", Icons.email,Colors.grey),
              SizedBox(height: 30,),
              UiHelper.customTextField(pwdController, "enter your password", Icons.visibility,Colors.grey,true),
              Container(
                alignment: Alignment.bottomRight,
                  child: TextButton(onPressed: (){login(emailController.text.toString(), pwdController.text.toString());}, child: Text("Forgot password?", style: TextStyle(color: Colors.white),))
              ),
              SizedBox(height: 30,),
              SizedBox(
                height: 50,
                child: Center(
                  child: SizedBox(
                    height:60,
                    width:350,
                    child:
                    ElevatedButton(onPressed:(){ login(emailController.text.toString(), pwdController.text.toString());} , child: Text("Login",style: TextStyle(fontSize: 25),),
                      style: ElevatedButton.styleFrom( shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)
                      ),backgroundColor: Colors.greenAccent.shade400,foregroundColor: Colors.black),),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/1024px-Google_%22G%22_logo.svg.png",height: 30,width: 30,),
                  SizedBox(width: 30,),
                  Image.network("https://1000logos.net/wp-content/uploads/2017/02/Facebook-Logosu.png",height: 50,width: 50,),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",style: TextStyle(color: Colors.white),),
                  TextButton(onPressed: (){}, child: Text("Sign up",style: TextStyle(color: Colors.green),))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  login(String email,String password)async{
    if(email=="" || password==""){
      return UiHelper.CustomAlertBox(context, "Enter Required Field's");
    }
    else{
      SharedPreferences prefs=await SharedPreferences.getInstance();
      prefs.setBool("islogin", true);
      log("Data Added");
      Navigator.push(context, MaterialPageRoute(builder: (context)=>NavBar()));
    }
  }
}
