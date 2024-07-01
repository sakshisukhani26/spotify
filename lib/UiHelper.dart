import 'package:flutter/material.dart';

class UiHelper{
  static CustomButton(VoidCallback callback,String text,double radius,String imagePath,FontWeight fontweight,double fontsize,double width,[Color? backgroundcolor,Color? foregroundColor,double? h,double? v]){
    return OutlinedButton(onPressed:(){callback();} ,
      child:Row(children: [
      Padding(
      padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 15),
        child:
        Image.network(imagePath)),
        SizedBox(width: 20,),
        Text(text,style: TextStyle(fontSize: fontsize,fontWeight:fontweight),)],),
      style: OutlinedButton.styleFrom( shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radius),
    ),
          backgroundColor: backgroundcolor,foregroundColor: foregroundColor),
    );
  }
  static customTextField(TextEditingController controller, String text, IconData icondata,Color color) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          hintText: text,
          suffixIcon:Icon(icondata),
          filled: true,
          focusColor: Colors.grey,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
  static customText(String text,Color color,double fontsize,[FontWeight? fontweight]){
    return Text(text,style: TextStyle(fontSize: fontsize, color: color,fontWeight: fontweight),);
  }
  static CustomAlertBox(BuildContext context,String text){
    return showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text(text),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("ok"))
        ],
      );
    });
  }
  static custompwd(TextEditingController controller, String text,Color color,[String? params,bool? password,VoidCallback? callback]) {
    return TextField(
      controller: controller,
      obscureText: password!,
      decoration: InputDecoration(
          hintText: text,
          suffixIcon:IconButton(
            icon: Icon(password
                ? Icons.visibility_off
                : Icons.visibility),
            onPressed: callback,
          ),
          filled: true,
          focusColor: Colors.grey,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}