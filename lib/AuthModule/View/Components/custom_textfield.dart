import 'package:flutter/material.dart';
import 'package:get/get.dart';
class customtf extends StatelessWidget {

@override
  const customtf({Key? key,required this.labeltxt, this.hintxt,this.obs,this.ochng}) : super(key: key);
  final labeltxt;
  final hintxt;
  final obs;
  final ochng;
  // final pficon;
  // final sficon;
  // final icon;
  @override
  Widget build(BuildContext context) {
    String emial='', password='';
    return TextFormField(
      onChanged: ochng,
      obscureText: obs,
      decoration: InputDecoration(

        // border: InputBorder.none,
        // focusedBorder: InputBorder.none,
        // enabledBorder: InputBorder.none,
        // errorBorder: InputBorder.none,
        // disabledBorder: InputBorder.none,
labelText: labeltxt,
        hintText: hintxt,
        // prefixIcon: Icon(pficon,color: Colors.grey,),
        // suffixIcon:sficon,
        // icon: icon,
      ),
    );
  }
}
