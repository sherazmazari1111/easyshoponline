import 'package:flutter/material.dart';
class ScroolGroup1 extends StatelessWidget {
   ScroolGroup1({Key? key , required this.name,required this.imagepath,r}) : super(key: key);
final name;
final imagepath;
// final sname;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.20,
      width:  MediaQuery.of(context).size.width*0.23,
      decoration: BoxDecoration(
        // color: Colors.black,

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 130,
            width: 130,
            child: CircleAvatar(
backgroundColor: Colors.white,
                child: Image.asset(imagepath)),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              name,
              style: TextStyle(
                  color: Colors.black,
                 ),
            ),
          ),
          // Text(
          //  sname ,
          //   style: TextStyle(
          //       color: Colors.black,
          //      ),
          // ),
        ],
      ),
    );
  }
}
class ScroolGroup2 extends StatelessWidget {
  const ScroolGroup2({Key? key , required this.imgpath}) : super(key: key);
final imgpath;
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height*0.53,
      width:  MediaQuery.of(context).size.width*0.55,
      decoration: BoxDecoration(
        // color: Colors.black,
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
        Container(
          padding: EdgeInsets.only(left: 10,right: 10,top: 5),
          height:MediaQuery.of(context).size.height*0.03,
          width: MediaQuery.of(context).size.width*0.17,
          decoration: BoxDecoration(
            color: Colors.pink[600],
borderRadius: BorderRadius.circular(4),
            
          ),
          child: Text("Save 12%",style: TextStyle(color: Colors.white),),
        ),
          SizedBox(height: 7,),
          Align(
              alignment: Alignment.topCenter,
              child:
              Image.asset(imgpath),

          ),
          SizedBox(height: 20,),
          Image.asset("assets/images/express.png"),
          SizedBox(height: 5,),
          Text("Huawei Talk band B3 Lite - Blue Watch",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
Row(
  children: [
    Image.asset("assets/images/star1.png"),
    Image.asset("assets/images/star1.png"),
    Image.asset("assets/images/star1.png"),
    Image.asset("assets/images/star1.png"),
    Image.asset("assets/images/star1.png"),
SizedBox(width: 3,),
Text("(12)"),
  ],
),
          SizedBox(height: 10,),
         Row(children: [
           Text("AED 49.50",style: TextStyle(color: Colors.green[500],fontWeight: FontWeight.bold,fontSize: 17),),
           SizedBox(width: 3,),
           Text("AED 49.50",style: TextStyle(color: Colors.deepOrange[500],fontWeight: FontWeight.bold,fontSize: 17),)
         ],),
        ],),
    );
  }
}
class GamePics extends StatelessWidget {
  const GamePics({Key? key , required this.img,}) : super(key: key);
final img;
// final hght;
// final wght;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*.13,
      width:MediaQuery.of(context).size.width*.50 ,
      // height: hght,
      // width: wght,
      decoration: BoxDecoration(
        // color: Colors.black,
borderRadius: BorderRadius.circular(4),
      ),
      child: Row(children: [
        Image.asset(img),
      ],),
    );
  }
}


