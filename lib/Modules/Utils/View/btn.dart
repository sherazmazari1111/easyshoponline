import 'package:flutter/material.dart';
class customBtn extends StatelessWidget {




  const customBtn({Key? key,required this.txt,required this.clr,required this.op}) : super(key: key);
  @override
  final txt;
  final clr;
final op;
  @override
  Widget build(BuildContext context) {
    return   MaterialButton(
      
      height: 60,
      minWidth: 500,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      color: Colors.blue[600],
      onPressed: op,
      child: Column(
        children:  [
          Text(
            txt,
            style: TextStyle(color:clr, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
