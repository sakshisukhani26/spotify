import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:flutter/material.dart';

class UiHelper{
  static customButton(
      String text, {
        double? fontsize,
        FontWeight? fontweight,
        double? borderradius,
        Color? bgcolor,
        Color? forecolor,
        double? height,
        double? width,
        VoidCallback? callback,
        double? side,
        Color? sidecolor
    }) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: () {
          // callback();
        },
        child: Text(
          text,
          style: TextStyle(fontSize: fontsize, fontWeight: fontweight),
        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  borderradius != null ? borderradius : 0.0),
              side: BorderSide(width: 1.0, color: Colors.white)),
          backgroundColor: bgcolor,
          foregroundColor: forecolor,
        ),
      ),
    );
  }
  static customRowButton(
      String imgpath,
      String text,
      [double? vpadding,
        double? hpadding,
        double? sizeboxwidth,
        double? fontsize,
        FontWeight? fontweight,
        Color? txtcolor,
        double? borderradius,
        double? bordersidewidth,
        Color? bordercolor,
        VoidCallback? callback]) {
    return OutlinedButton(
      onPressed: () {
        // callback();
      },
      child: Row(children: [
        Padding(
          padding:
          EdgeInsets.symmetric(vertical: vpadding!, horizontal: hpadding!),
          child: Image.network(imgpath),
        ),
        customSizebox(width: sizeboxwidth),
        Text(text,
            style: TextStyle(
                fontSize: fontsize, fontWeight: fontweight, color: txtcolor)),
      ]),
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderradius!)),
        side: BorderSide(width: bordersidewidth!, color: bordercolor!),
      ),
    );
  }
  static customSizebox({double? width, double? height}) {
    return SizedBox(
      height: height,
      width: width,
    );
  }

  static customTextField(TextEditingController controller, String text, {IconData? icondata,Color? focuscolor,double? borderradius,bool? password,VoidCallback? callback}) {
    return TextField(
      controller: controller,
      obscureText: password!=null ? true : false,
      decoration: InputDecoration(
          hintText: text,
          suffixIcon: Icon(icondata),
          filled: true,
          focusColor: focuscolor,
          border: OutlineInputBorder(
            borderRadius: borderradius!= null ?BorderRadius.circular(borderradius) : BorderRadius.circular(0.0),
          )),
      // onTap: callback,
    );
  }
  static customText(String text,{Color? color,double? fontsize,FontWeight? fontweight,TextAlign? align}){
    return Text(text,style: TextStyle(fontSize: fontsize, color: color,fontWeight: fontweight),textAlign: align,);
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
  static customTextButton(String text,
  {Color? color,
        FontWeight? fontweight,
        double? fontsize,
        VoidCallback? callback}) {
    return TextButton(
        onPressed: () {
          // callback();
        },
        child: Text(text,
            style: TextStyle(
                color: Colors.white,
                fontWeight: fontweight,
                fontSize: fontsize)));
  }
  static custompwd(TextEditingController controller, String text, {IconData? icondata,Color? focuscolor,double? borderradius,bool? password,VoidCallback? callback}) {
    return TextField(
      controller: controller,
      obscureText: password!=null ? true : false,
      decoration: InputDecoration(
          hintText: text,
          suffixIcon: Icon(icondata),
          filled: true,
          focusColor: focuscolor,
          border: OutlineInputBorder(
            borderRadius: borderradius!= null ?BorderRadius.circular(borderradius) : BorderRadius.circular(0.0),
          )),
      // onTap: callback,
    );
  }
  // static expansionTile(String text,Color color,double fontsize,
  //     {VoidCallback? callback,double? width,bool? isSwitched,VoidCallback? callbackChange}){
  //   return ExpansionTile(title: UiHelper.customText(text,color: color,fontsize: fontsize),
  //     childrenPadding: EdgeInsets.only(left: 40),
  //     children: [
  //       ListTile(
  //         title:Row(
  //             children: [
  //               UiHelper.customText(text,color: color,fontsize: fontsize),
  //               UiHelper.customSizebox(width: width),
  //               Switch(value: isSwitched!,
  //                   onChanged: callbackChange!,
  //                     activeTrackColor: Colors.lightGreenAccent,
  //                     activeColor: Colors.green,
  //               )
  //             ],
  //         )
  //         // onTap: callback,
  //       ),
  //     ],
  //   );
  // }
  static iconBtn(IconData icondata,double IconSize,{Color? color,VoidCallbackAction? callback,bool? image,String? imagePath}) {
    return IconButton(onPressed: () {
      callback();
    },
      icon: Icon(icondata), iconSize: IconSize,);
  }
  static customOutlinebtn(double borderradius,double side,String text,double fontsize,FontWeight fontweight,Color color,Color sideColor,{VoidCallback? callback,}){
    return OutlinedButton(onPressed: (){callback!();}, child:
      UiHelper.customText(text,fontsize: fontsize,fontweight: fontweight,color: color),style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderradius)),side: BorderSide(width: side, color: sideColor),),
    );
  }
}