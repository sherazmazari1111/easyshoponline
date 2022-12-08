import 'package:easyshoponline/Modules/CetagoriesModule/Model/cetagories_model.dart';
import 'package:flutter/material.dart';
class ConsumerElectronics extends StatelessWidget {
   ConsumerElectronics({Key? key}) : super(key: key);
List<ConsumerE> dataforCE= [
  ConsumerE(imgs: "assets/images/watch.png"),
  ConsumerE(imgs: "assets/images/watch1.png"),
  ConsumerE(imgs: "assets/images/Image 5.png"),
  ConsumerE(imgs: "assets/images/watch.png"),
  ConsumerE(imgs: "assets/images/watch1.png"),
  ConsumerE(imgs: "assets/images/Image 5.png"),
  ConsumerE(imgs: "assets/images/watch.png"),
  ConsumerE(imgs: "assets/images/watch1.png"),
  ConsumerE(imgs: "assets/images/Image 5.png"),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width:  MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

              Padding(
                padding:  EdgeInsets.only(top: 90,),
                child: Row(children: [
                  Icon(Icons.arrow_back,color: Colors.black,),
                  Spacer(),
                  Text("Consumer Electronics",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  // Spacer(),
                  SizedBox(width: 10,),
                  Image.asset("assets/images/drop1.png"),
                  // Spacer(),
                  Spacer(),
                ],),

              ),
              SizedBox(height: 35,),
              Container(
                height: MediaQuery.of(context).size.height*.06,
                width:MediaQuery.of(context).size.width ,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(6),
                ),

                child: Padding(
                  padding:  EdgeInsets.only(left: 10,top: 5),
                  child: TextFormField(
                    decoration: InputDecoration(
                      // labelText:
                      hintText: "Search hare",
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      prefixIcon: Icon(Icons.search,color: Colors.grey,),
                      suffixIcon: Icon(Icons.settings_backup_restore),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,

child: GridView.builder(
                    gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                      // maxCrossAxisExtent: 200,
                        crossAxisCount: 2,
childAspectRatio: 2/3,
                        // childAspectRatio: 3 / 2,
                        // childAspectRatio: 4/2,

                        // crossAxisSpacing: 20,
                        crossAxisSpacing: 20,

                        // mainAxisSpacing: 20),
                        mainAxisSpacing: 4),

                    itemCount: dataforCE.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return SizedBox(
                        child: Container(
// margin: EdgeInsets.symmetric(horizontal: 20),
                          padding: EdgeInsets.all(20),
                          height: MediaQuery.of(context).size.height*0.80,
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
                                Image.asset(dataforCE[index].imgs,height: 110,width: 110,),

                              ),
                              SizedBox(height: 10,),
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
                              SizedBox(height: 5,),
                              Row(children: [
                                Text("AED 49.50",style: TextStyle(color: Colors.green[500],fontWeight: FontWeight.bold,fontSize: 14),),
                                SizedBox(width: 3,),
                                Text("AED 49.50",style: TextStyle(color: Colors.deepOrange[500],fontWeight: FontWeight.bold,fontSize: 14),)
                              ],),
                            ],),
                        ),
                      );
                      //
                    }),
// child:  GridView.count(
//   crossAxisCount: 2,
//   crossAxisSpacing: 5,
//   children: <Widget>[
//     SizedBox(height: MediaQuery.of(context).size.height*.49,width: MediaQuery.of(context).size.width*.50,
//
//
//
//       child: Container(
// // margin: EdgeInsets.symmetric(horizontal: 20),
//         padding: EdgeInsets.all(20),
//         height: MediaQuery.of(context).size.height*0.53,
//         width:  MediaQuery.of(context).size.width*0.55,
//         decoration: BoxDecoration(
//           // color: Colors.black,
//           border: Border.all(color: Colors.grey),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//
//           children: [
//             Container(
//               padding: EdgeInsets.only(left: 10,right: 10,top: 5),
//               height:MediaQuery.of(context).size.height*0.03,
//               width: MediaQuery.of(context).size.width*0.17,
//               decoration: BoxDecoration(
//                 color: Colors.pink[600],
//                 borderRadius: BorderRadius.circular(4),
//
//               ),
//               child: Text("Save 12%",style: TextStyle(color: Colors.white),),
//             ),
//             SizedBox(height: 7,),
//             Align(
//               alignment: Alignment.topCenter,
//               child:
//               Image.asset("assets/images/watch.png",height: 200,width: 200,),
//
//             ),
//             SizedBox(height: 20,),
//             Image.asset("assets/images/express.png"),
//             SizedBox(height: 5,),
//             Text("Huawei Talk band B3 Lite - Blue Watch",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
//             SizedBox(height: 5,),
//             Row(
//               children: [
//                 Image.asset("assets/images/star1.png"),
//                 Image.asset("assets/images/star1.png"),
//                 Image.asset("assets/images/star1.png"),
//                 Image.asset("assets/images/star1.png"),
//                 Image.asset("assets/images/star1.png"),
//                 SizedBox(width: 3,),
//                 Text("(12)"),
//               ],
//             ),
//             SizedBox(height: 10,),
//             Row(children: [
//               Text("AED 49.50",style: TextStyle(color: Colors.green[500],fontWeight: FontWeight.bold,fontSize: 17),),
//               SizedBox(width: 3,),
//               Text("AED 49.50",style: TextStyle(color: Colors.deepOrange[500],fontWeight: FontWeight.bold,fontSize: 17),)
//             ],),
//           ],),
//       ),),










    // _custom1("sheraz", "assets/images/ba.png", context),
//   ],
// ),
//                 child: GridView.builder(
//                     gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
//                       // maxCrossAxisExtent: 200,
//                         crossAxisCount: 1,
//
//                         // childAspectRatio: 3 / 2,
//                         // childAspectRatio: 4/2,
//
//                         // crossAxisSpacing: 20,
//                         crossAxisSpacing: 20,
//
//                         // mainAxisSpacing: 20),
//                         mainAxisSpacing: 4),
//
//                     itemCount: dataforCE.length,
//                     itemBuilder: (BuildContext ctx, index) {
//                       return SizedBox(
//                         child: Container(
// // margin: EdgeInsets.symmetric(horizontal: 20),
//                           padding: EdgeInsets.all(20),
//                           height: MediaQuery.of(context).size.height*0.80,
//                           width:  MediaQuery.of(context).size.width*0.55,
//                           decoration: BoxDecoration(
// // color: Colors.black,
//                             border: Border.all(color: Colors.grey),
//                           ),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//
//                             children: [
//                               Container(
//                                 padding: EdgeInsets.only(left: 10,right: 10,top: 5),
//                                 height:MediaQuery.of(context).size.height*0.03,
//                                 width: MediaQuery.of(context).size.width*0.17,
//                                 decoration: BoxDecoration(
//                                   color: Colors.pink[600],
//                                   borderRadius: BorderRadius.circular(4),
//
//                                 ),
//                                 child: Text("Save 12%",style: TextStyle(color: Colors.white),),
//                               ),
//                               SizedBox(height: 7,),
//                               Align(
//                                 alignment: Alignment.topCenter,
//                                 child:
//                                 Image.asset(dataforCE[index].imgs,height: 180,width: 180,),
//
//                               ),
//                               SizedBox(height: 20,),
//                               Image.asset("assets/images/express.png"),
//                               SizedBox(height: 5,),
//                               Text("Huawei Talk band B3 Lite - Blue Watch",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
//                               SizedBox(height: 5,),
//                               Row(
//                                 children: [
//                                   Image.asset("assets/images/star1.png"),
//                                   Image.asset("assets/images/star1.png"),
//                                   Image.asset("assets/images/star1.png"),
//                                   Image.asset("assets/images/star1.png"),
//                                   Image.asset("assets/images/star1.png"),
//                                   SizedBox(width: 3,),
//                                   Text("(12)"),
//                                 ],
//                               ),
//                               SizedBox(height: 10,),
//                               Row(children: [
//                                 Text("AED 49.50",style: TextStyle(color: Colors.green[500],fontWeight: FontWeight.bold,fontSize: 14),),
//                                 SizedBox(width: 3,),
//                                 Text("AED 49.50",style: TextStyle(color: Colors.deepOrange[500],fontWeight: FontWeight.bold,fontSize: 14),)
//                               ],),
//                             ],),
//                         ),
//                       );
//                       //
//                     }),
              ),










            //   GridView.builder(
            //   itemCount: images.length,
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 2,
            //       crossAxisSpacing: 4.0,
            //       mainAxisSpacing: 4.0
            //   ),
            //   itemBuilder: (BuildContext context, int index){
            //     return Container();
            //   },
            // )),
    ],),
          ),
        ),
      ),
    );
  }
}
