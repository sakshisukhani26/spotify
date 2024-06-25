import 'package:flutter/material.dart';

class UiHelper{
  static CustomButton(VoidCallback callback,String imagePath,String text,double radius,Color backgroundcolor,Color foregroundColor,FontWeight fontweight,double fontsize){
    return OutlinedButton(onPressed:(){callback();} ,
      child:Row(children: [ Image.network(imagePath),Text(text,style: TextStyle(fontSize: fontsize,fontWeight:fontweight),)],),
      style: OutlinedButton.styleFrom( shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radius),
    ),backgroundColor: backgroundcolor,foregroundColor: foregroundColor),);
  }
}