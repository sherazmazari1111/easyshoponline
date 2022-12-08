import 'package:easyshoponline/Modules/CetagoriesModule/Model/cetagories_model.dart';
import 'package:easyshoponline/Modules/CetagoriesModule/View/consumer_electronics.dart';
import 'package:flutter/material.dart';
class CetagoreisScreen extends StatelessWidget {
   CetagoreisScreen({Key? key}) : super(key: key);
List<CetaCustom> dataforceta= [
  CetaCustom(txt: "Electronics & Appliances"),
  CetaCustom(txt: "Health & Personal Care"),
  CetaCustom(txt: "Perfumes & Frangnances"),
  CetaCustom(txt: "Sports & Outdoors"),
  CetaCustom(txt: "Mobile & Tablets"),
  CetaCustom(txt: "Pet Supplies & Accessories"),
  CetaCustom(txt: "Toys, Games & Baby"),
  CetaCustom(txt: "Toys, Games & Baby"),
  CetaCustom(txt: "Toys, Games & Baby"),
  CetaCustom(txt: "Toys, Games & Baby"),
  CetaCustom(txt: "Toys, Games & Baby"),
  CetaCustom(txt: "Toys, Games & Baby"),







];
List<DataForGrid> dataforgrid= [
  DataForGrid(img: "assets/images/phone.png", text: "Mobile Phone"),
  DataForGrid(img: "assets/images/tablet.png", text: "Tablet"),
  DataForGrid(img: "assets/images/Accessories.png", text: "Accessories"),

  DataForGrid(img: "assets/images/tablet.png", text: "Tablet"),
  DataForGrid(img: "assets/images/phone.png", text: "Mobile Phone"),
  DataForGrid(img: "assets/images/Accessories.png", text: "Accessories"),

  DataForGrid(img: "assets/images/Accessories.png", text: "Accessories"),

  DataForGrid(img: "assets/images/tablet.png", text: "Tablet"),
  DataForGrid(img: "assets/images/phone.png", text: "Mobile Phone"),
  DataForGrid(img: "assets/images/tablet.png", text: "Tablet"),
  DataForGrid(img: "assets/images/Accessories.png", text: "Accessories"),

  DataForGrid(img: "assets/images/phone.png", text: "Mobile Phone"),










];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Row(
      //     children: [
      //       Icon(Icons.search,color: Colors.black,),
      //       Spacer(),
      //       Text("Cetagories",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),
      //       Spacer(),
      //       Spacer(),
      //     ],
      //   ),
      //   toolbarHeight: 100,
      //   backgroundColor: Colors.white,
      // ),
      body: SizedBox(height: MediaQuery.of(context).size.height,
      width:  MediaQuery.of(context).size.width,
      // width:  MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(


          children: [
          Padding(
            padding:  EdgeInsets.only(top: 90,left: 20,right: 20),
            child: Row(children: [
              Icon(Icons.search,color: Colors.black,),
                    Spacer(),
                    Text("Cetagories",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                    // Spacer(),
                    Spacer(),
            ],),
          ),
        // SizedBox(height: 20,),

        // ListTile(
        //
        //   title: Column(children: [
        //     Container(
        //             // height: MediaQuery.of(context).size.height,
        //             // width: MediaQuery.of(context).size.width*.20,
        //             height: 100,
        //             width: 100,
        //             color: Colors.black,
        //             child: Text("Electronics & Appliances"),
        //           ),
        //   ],),
        // ),
            Padding(padding: EdgeInsets.only(top: 20),),
        Align(
          alignment: Alignment.bottomLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(
                height: MediaQuery.of(context).size.height,
                width:MediaQuery.of(context).size.width*.20,
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                    itemCount: 12,
                    separatorBuilder:( context, int index)=>
                        SizedBox(height: 0,) ,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        // height: MediaQuery.of(context).size.height,
                        // width: MediaQuery.of(context).size.width*.20,
                        height: 100,
                        width: 100,
                        color: Colors.white70,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(dataforceta[index].txt),
                            ),
                          ],
                        ),
                      );

                    }),
              ),
Padding(padding: EdgeInsets.only(left: 20),),
             Column(
               children: [
                 SizedBox(height: 30,),
                 Container(
                   height: MediaQuery.of(context).size.height*.15,
                   width:MediaQuery.of(context).size.width*.70,
                   // color: Colors.black,
                   child: Image.asset("assets/images/banner1.png"),
                 ),
                 SizedBox(height: 20,),
                 SizedBox(
                   height: MediaQuery.of(context).size.height*.55,
                   // height: 400,
                   width: MediaQuery.of(context).size.width*.71,
          child: GridView.count(
            crossAxisCount: 3,
            scrollDirection: Axis.vertical,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 5.0,

            children: List.generate(dataforceta.length, (index) {

              return Container(
                                   height: 320,
                                   width: 320,
                                   // color: Colors.black,
                child: InkWell(
                  onTap: (){Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  ConsumerElectronics()),
                  );},
                  child: Column(children: [
Image.asset(dataforgrid[index].img),
                    SizedBox(height: 10,),
                    Text(dataforgrid[index].text),
                  ],),
                ),
                                 );
            }
            )  ,

          //          child: GridView.builder(
          //              gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
          //                  // maxCrossAxisExtent: 200,
          //                  maxCrossAxisExtent: 200,
          //
          //                  // childAspectRatio: 3 / 2,
          //                  childAspectRatio: 4/2,
          //
          //                  // crossAxisSpacing: 20,
          //                  crossAxisSpacing: 10,
          //
          //                  // mainAxisSpacing: 20),
          //              mainAxisSpacing: 4),
          //
          // itemCount: dataforceta.length,
          //              itemBuilder: (BuildContext ctx, index) {
          //                return Container(
          //                  height: 100,
          //                  width: 100,
          //                  color: Colors.black,
          //                );
          //              }),
                 ),
                 // Image.asset("assets/images/banner1.png",height: 150,width: 300,),


                 ),],
             ),
            ],
          ),
        ),
        ],
        ),
      ),


      ),
    );
  }
}
