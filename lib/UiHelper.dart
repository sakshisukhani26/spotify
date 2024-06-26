import 'package:flutter/material.dart';

class UiHelper{
  static CustomButton(VoidCallback callback,String imagePath,String text,double radius,Color backgroundcolor,Color foregroundColor,FontWeight fontweight,double fontsize,double horizontal,double vertical,double width){
    return OutlinedButton(onPressed:(){callback();} ,
      child:Row(children: [
      Padding(
      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 12),
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
  static customTextField(TextEditingController controller, String text, IconData icondata,Color color,[bool? password]) {
    return TextField(
      controller: controller,
      obscureText: password!=null ? password : false,
      decoration: InputDecoration(
          hintText: text,
          suffixIcon: Icon(icondata),
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
}