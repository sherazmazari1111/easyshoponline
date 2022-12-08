import 'package:flutter/material.dart';
class TxtFrmFld extends StatelessWidget {

@override
  const TxtFrmFld({Key? key,required this.labeltxt, this.hintxt,this.obs,}) : super(key: key);
  final labeltxt;
  final hintxt;
  final obs;
  // final pficon;
  // final sficon;
  // final icon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
