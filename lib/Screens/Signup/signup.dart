import 'package:flutter/material.dart';
import 'package:spotify/Screens/Signup/Controllers/signupController.dart';
import 'package:spotify/Widgets/UiHelper.dart';
import 'package:intl/intl.dart';
import 'dart:developer';

import 'package:spotify/Screens/Login/login.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});


  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  bool passwordVisible=true;
  final format= DateFormat('yyy-mm-dd');
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network("https://play-lh.googleusercontent.com/7ynvVIRdhJNAngCg_GI7i8TtH8BqkJYmffeUHsG-mJOdzt1XLvGmbsKuc5Q1SInBjDKN=w240-h480-rw",height: 80,width: 80,),
                      SizedBox(width: 10,),
                      UiHelper.customText("Spotify",color: Colors.white,fontsize: 40),
                    ],
              ),
              SizedBox(height: 50,),
              UiHelper.customTextField(emailController, "enter your email", icondata:Icons.email,focuscolor:Colors.grey,borderradius: 10),
              SizedBox(height: 30,),
              UiHelper.customTextField(nameController, "enter your name", icondata:Icons.person,focuscolor:Colors.grey,borderradius: 10),
              SizedBox(height: 30,),
              UiHelper.custompwd(pwdController, "enter your password",Colors.grey,"password",passwordVisible,() {
                setState(
                      () {
                    passwordVisible = !passwordVisible;
                    log(passwordVisible.toString());
                  },
                );
              },),

              SizedBox(height: 30,),

              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child:TextField(
                    decoration: InputDecoration(
                              label: Text("enter your birth date"),
                              suffixIcon: Icon(Icons.calendar_today),
                    ),
                    controller: dateController,
                    readOnly: true,
                    onTap: () => SignupController.onTapFunction(context: context,dateController:dateController),
                  ),
                ),
                decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10)
                    ),
              ),
              SizedBox(height: 60,),
              SizedBox(
                height: 50,
                child: Center(
                  child: SizedBox(
                    height:60,
                    width:350,
                    child:
                        UiHelper.customOutlinebtn(25, 1.0, "Create Account", 20, FontWeight.bold, Colors.green, Colors.green,callback: (){
                          SignupController.signup(context,emailController.text.toString(), pwdController.text.toString(),nameController.text.toString(),dateController.text.toString());
                          }),
                    // OutlinedButton(onPressed: (){
                    //   signup(emailController.text.toString(), pwdController.text.toString(),nameController.text.toString(),dateController.text.toString());
                    //   // Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                    //   },child:
                    // Text("Create account",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green)),
                    //   style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),side: BorderSide(width: 1.0, color: Colors.green),),
                    // ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UiHelper.customText("Already have an account?",color: Colors.white),

                    UiHelper.customTextButton("Sign in",color: Colors.green,callback:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                    } ),
                  ],
                ),
            ],
          ),
        ),
      ),

    );
  }
  // signup(String email,String password,String name,String date)async{
  //   final bool emailValid =
  //   RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
  //       .hasMatch(email);
  //   if(email=="" || password==""||name==""||date==""){
  //     return UiHelper.CustomAlertBox(context, "Enter Required Field's");
  //   }
  //   else{
  //     if(!emailValid)
  //     {
  //       return UiHelper.CustomAlertBox(context, "Enter Valid Email");
  //     }
  //     else {
  //       Navigator.push(
  //           context, MaterialPageRoute(builder: (context) => Login()));
  //     }
  //   }
  // }
  // onTapFunction({required BuildContext context}) async {
  //   DateTime? pickedDate = await showDatePicker(
  //     context: context,
  //     lastDate: DateTime.now(),
  //     firstDate: DateTime(2015),
  //     initialDate: DateTime.now(),
  //   );
  //   if (pickedDate == null) return;
  //   dateController.text = DateFormat('yyyy-MM-dd').format(pickedDate);
  // }
}
