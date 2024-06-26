import 'package:datetime_picker_formfield_new/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:spotify/UiHelper.dart';
import 'package:intl/intl.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  final format= DateFormat('yyy-mm-dd');
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network("https://play-lh.googleusercontent.com/7ynvVIRdhJNAngCg_GI7i8TtH8BqkJYmffeUHsG-mJOdzt1XLvGmbsKuc5Q1SInBjDKN=w240-h480-rw",height: 80,width: 80,),
                    SizedBox(width: 10,),
                    Text("Spotify",style: TextStyle(color: Colors.white,fontSize: 40,)),
                  ],
            ),
            SizedBox(height: 50,),
            UiHelper.customTextField(emailController, "enter your email", Icons.email,Colors.grey),
            SizedBox(height: 30,),
            UiHelper.customTextField(nameController, "enter your name", Icons.person,Colors.grey),
            SizedBox(height: 30,),
            UiHelper.customTextField(pwdController, "enter your password", Icons.visibility,Colors.grey,true),
            SizedBox(height: 30,),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: DateTimeField(
                  format: format,
                  decoration: InputDecoration(
                    label: Text("enter your birth date"),
                    suffixIcon: Icon(Icons.calendar_today),
                  ),
                  onShowPicker: (context, currentValue) async{
                  final date = showDatePicker(context: context, firstDate: DateTime(1900), lastDate: DateTime(2100));
                  },style: TextStyle(backgroundColor: Colors.white)),
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
                  OutlinedButton(onPressed: (){},child:
                  Text("Create account",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green)),
                    style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),side: BorderSide(width: 1.0, color: Colors.green),),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",style: TextStyle(color: Colors.white),),
                  TextButton(onPressed: (){}, child: Text("Sign in",style: TextStyle(color: Colors.green),))
                ],
              ),
          ],
        ),
      ),
    );
  }
}
