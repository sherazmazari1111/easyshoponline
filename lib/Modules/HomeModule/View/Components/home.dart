// import 'package:easyshop/Utils/View/textformfield1.dart';
import 'package:easyshoponline/Modules/CetagoriesModule/View/cetagoreis_screen.dart';
import 'package:easyshoponline/Modules/HomeModule/View/Components/scroll%20group1.dart';
import 'package:flutter/material.dart';

import '../../Model/home_model.dart';
class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);
 List<categoriesModel> data =  [
   categoriesModel(image: "assets/images/Rectangle 11.png", title: "Electronics & Appliances"),
   categoriesModel(image: "assets/images/Rectangle 14.png", title: "Sports & Outdoors"),
   categoriesModel(image: "assets/images/Rectangle 15.png", title: "Health & Personal Care"),
   categoriesModel(image: "assets/images/Rectangle 16.png", title: "Arts & Crafts"),
   categoriesModel(image: "assets/images/Rectangle 14.png", title: "Health & Personal Care"),
 ];
 List<FlashSale> data2= [
   FlashSale(img1: "assets/images/watch.png" ),

   FlashSale(img1: "assets/images/watch1.png" ),
   FlashSale(img1: "assets/images/Image 5.png" ),

 ];
 List<GamePic> dataforgamepic = [
   GamePic(picss: "assets/images/game1.png"),
   GamePic(picss: "assets/images/chair.png"),
   GamePic(picss: "assets/images/headphone.png"),

 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
          Image.asset("assets/images/echoplus.png",fit:BoxFit.fill ,height: 375,width: MediaQuery.of(context).size.width,

          ),
         Padding(
           padding: const EdgeInsets.only(top: 57,left: 20,right: 20),
           child: Container(
               height: MediaQuery.of(context).size.height*.06,
               width:MediaQuery.of(context).size.width ,
               decoration: BoxDecoration(
                 color: Colors.white,
borderRadius: BorderRadius.circular(25),
               ),

               child: Padding(
                 padding:  EdgeInsets.only(left: 10,top: 7),
                 child: TextFormField(
                   decoration: InputDecoration(
                     // labelText:
                     hintText: "What are you looking for?",
                     border: InputBorder.none,
                     focusedBorder: InputBorder.none,
                     enabledBorder: InputBorder.none,
                     errorBorder: InputBorder.none,
                     disabledBorder: InputBorder.none,
                     prefixIcon: Icon(Icons.search,color: Colors.grey,),
                   ),
                 ),
               ),
           ),
         ),
          // Container(
          //   height: MediaQuery.of(context).size.height*.06,
          //   width:MediaQuery.of(context).size.width ,
          //   color: Colors.black,
          // ),
Align(
  alignment: Alignment.bottomCenter,
  child:   Container(
    padding: EdgeInsets.only(top: 30,left: 20,right: 20,bottom: 90),

    height: MediaQuery.of(context).size.height*.60,

    width: MediaQuery.of(context).size.width,

    decoration: BoxDecoration(

      color: Colors.white,

      borderRadius: BorderRadius.only(topLeft: Radius.circular(14),topRight: Radius.circular(14),),

    ),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Row(
           children: [
             Text("Cetagories",style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.bold),),
             Spacer(),
             InkWell(
                 onTap: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(
                         builder: (context) =>  CetagoreisScreen()),
                   );
                 },
                 child: Text("See All",style: TextStyle(color: Colors.grey),)),

SizedBox(
  width: 8,
),
             Image.asset("assets/images/backarrow.png"),
           ],
         ),
          SizedBox(
            height: 22,
          ),
             SizedBox(height: MediaQuery.of(context).size.height*.21,
             width: MediaQuery.of(context).size.width,
               child: ListView.separated(
                 shrinkWrap: true,
                   itemCount: data.length,
                   scrollDirection: Axis.horizontal,
                   separatorBuilder:( context, int index)=>SizedBox(width: 20,) ,
                   itemBuilder: (BuildContext context, int index) {
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
                                 child: Image.asset(data[index].image,height: 180,width: 200,)),
                           ),

                           Padding(
                             padding: const EdgeInsets.only(left: 15),
                             child: Text(
                              data[index].title ,
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
                   }),


               // ListView(
               //
               //   scrollDirection: Axis.horizontal,
               //
               //
               //   children: [
               //
               //     // ScroolGroup1(name: "Electronics & Appliances", imagepath: "assets/images/Rectangle 11.png"),
               //     // ScroolGroup1(name: "Sports & Outdoors", imagepath: "assets/images/Rectangle 14.png"),
               //     // ScroolGroup1(name: "Health & Personal Care", imagepath: "assets/images/Rectangle 15.png"),
               //     // ScroolGroup1(name: "Arts & Crafts", imagepath: "assets/images/Rectangle 16.png"),
               //     // ScroolGroup1(name: "Toys, Games & Baby", imagepath: "assets/images/Rectangle 11.png"),
               //     // ScroolGroup1(name: "Health & Personal Care", imagepath: "assets/images/Rectangle 14.png"),
               //
               //   ],
               // ),
             ),
SizedBox(height: 30,),
          Row(
            children: [
              Text("Flash Sale",style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.bold),),
              Spacer(),
              Container(
                padding: EdgeInsets.only(left: 10,right: 10,top: 5),
                height: MediaQuery.of(context).size.height*0.03,
                width: MediaQuery.of(context).size.width*.40,
                // color: Colors.black,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image.asset("assets/images/timer.png"),
                    Spacer(),
                    Text("Expires In:",style: TextStyle(color: Colors.white),),
Spacer(),
                    Text("06 : 25 : 37",style: TextStyle(color: Colors.white),),
                ],),
              ),
              Spacer(),
              Text("See All",style: TextStyle(color: Colors.grey),),

              SizedBox(
                width: 8,
              ),
              Image.asset("assets/images/backarrow.png"),


            ],
          ),
          SizedBox(height: 20,),
          SizedBox(
            height:  MediaQuery.of(context).size.height*0.46,
            width:  MediaQuery.of(context).size.width,
            child: ListView.separated(
              shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: data2.length,
                separatorBuilder:( context, int index)=>SizedBox(width: 20,),
                itemBuilder: (BuildContext context, int index) {
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
                          Image.asset(data2[index].img1,height: 180,width: 200,),

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
                }),
            // child: ListView(
            //   // padding: EdgeInsets.all(5),
            //   scrollDirection: Axis.horizontal,
            //
            //   children: [
            //     ScroolGroup2(imgpath: "assets/images/watch.png"),
            //     SizedBox(width: 20,),
            //     ScroolGroup2(imgpath: "assets/images/watch1.png"),
            //     SizedBox(width: 20,),
            //
            //     ScroolGroup2(imgpath: "assets/images/Image 5.png"),
            //
            //
            //   ],
            // ),

          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text("Deals & Discounts",style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.bold),),
              Spacer(),
              Text("See All",style: TextStyle(color: Colors.grey),),

              SizedBox(
                width: 8,
              ),
              Image.asset("assets/images/backarrow.png"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
SizedBox(
  height: MediaQuery.of(context).size.height*.14,
  width:MediaQuery.of(context).size.width,
  child: ListView.separated(
    scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: 3,
      separatorBuilder:( context, int index)=>SizedBox(width: 20,) ,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: MediaQuery.of(context).size.height*.13,
          width:MediaQuery.of(context).size.width*.50,

          child: Row(children: [
            Image.asset(dataforgamepic[index].picss),
          ],),
        );
      }),
  // child: ListView(
  //   scrollDirection: Axis.horizontal,
  //   children: [
  //   GamePics(img: "assets/images/game1.png"),
  //     SizedBox(width: 20,),
  //
  //     GamePics(img: "assets/images/chair.png"),
  //     SizedBox(width: 20,),
  //
  //     GamePics(img: "assets/images/headphone.png"),
  //
  //   ],),
),
SizedBox(height: 20,),
          SizedBox(height: MediaQuery.of(context).size.height*.14,
          width: MediaQuery.of(context).size.width,
            child: Image.asset("assets/images/aftergame.png"),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text("Featured Discount",style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.bold),),
              Spacer(),
              Text("See All",style: TextStyle(color: Colors.grey),),

              SizedBox(
                width: 8,
              ),
              Image.asset("assets/images/backarrow.png"),
            ],
          ),
          SizedBox(height: 20,),
          SizedBox(
            height:  MediaQuery.of(context).size.height*0.46,
            width:  MediaQuery.of(context).size.width,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
                shrinkWrap: true,

                itemCount: data2.length,
                separatorBuilder:( context, int index)=>SizedBox(width: 20,) ,
                itemBuilder: (BuildContext context, int index) {
                  return  Container(
// margin: EdgeInsets.symmetric(horizontal: 20),
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
                          Image.asset(data2[index].img1,height: 180,width: 200,),

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
                }),
            // child: ListView(
            //   // padding: EdgeInsets.all(5),
            //   scrollDirection: Axis.horizontal,
            //
            //   children: [
            //     ScroolGroup2(imgpath: "assets/images/watch.png"),
            //     SizedBox(width: 20,),
            //     ScroolGroup2(imgpath: "assets/images/watch1.png"),
            //     SizedBox(width: 20,),
            //
            //     ScroolGroup2(imgpath: "assets/images/Image 5.png"),
            //
            //
            //   ],
            // ),

          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text("New Arrival",style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.bold),),
              Spacer(),
              Text("See All",style: TextStyle(color: Colors.grey),),

              SizedBox(
                width: 8,
              ),
              Image.asset("assets/images/backarrow.png"),
            ],
          ),
          SizedBox(height: 20,),
          SizedBox(
            height:  MediaQuery.of(context).size.height*0.46,
            width:  MediaQuery.of(context).size.width,
            child: ListView.separated(
              shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: data2.length,
                separatorBuilder:( context, int index)=>SizedBox(width: 20,) ,
                itemBuilder: (BuildContext context, int index) {
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
                          Image.asset(data2[index].img1,height: 180,width: 200,),

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
                }),
            // child: ListView(
            //   // padding: EdgeInsets.all(5),
            //   scrollDirection: Axis.horizontal,
            //
            //   children: [
            //     ScroolGroup2(imgpath: "assets/images/watch.png"),
            //     SizedBox(width: 20,),
            //     ScroolGroup2(imgpath: "assets/images/watch1.png"),
            //     SizedBox(width: 20,),
            //
            //     ScroolGroup2(imgpath: "assets/images/Image 5.png"),
            //
            //
            //   ],
            // ),

          ),

        ],
      ),
    ),

  ),
),
          Align(
            alignment: Alignment.bottomRight,

            child: Container(
              height: MediaQuery.of(context).size.height*.11,
              width: MediaQuery.of(context).size.width,
              // color: Colors.black,
              child: Row(children: [
                Padding(padding: EdgeInsets.only(left: 10,right: 10),),
                Image.asset("assets/images/ceta1.png"),
                // Spacer(),
                SizedBox(width: 70,),
                Image.asset("assets/images/cart.png"),
                SizedBox(width: 70,),

             Icon(Icons.home,size: 50,color: Colors.blueAccent,),
                SizedBox(width: 70,),

                Image.asset("assets/images/heart1.png"),
                // Spacer(),
                SizedBox(width: 70,),

                Image.asset("assets/images/profile.png",height: 130,width: 20,),


              ],),
            ),
          ),
        ],),
      ),

    );
  }
}
