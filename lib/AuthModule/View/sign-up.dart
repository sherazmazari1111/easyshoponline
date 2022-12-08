// import 'package:easyshop/Home/View/home.dart';
// import 'package:easyshop/Utils/View/btn.dart';
// import 'package:easyshop/Utils/View/textformfield1.dart';
import 'package:easyshoponline/Modules/FirebaseModule/crud-data.dart';
import 'package:easyshoponline/Modules/HomeModule/View/Components/home.dart';
import 'package:easyshoponline/Modules/Utils/View/btn.dart';
import 'package:easyshoponline/Modules/Utils/View/textfiledcustom.dart';
// import 'package:easyshoponline/crud-data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(children: [
    Padding(
        padding: const EdgeInsets.only(top: 91,left: 20,right: 20,bottom: 30),
        child: Container(
          padding: EdgeInsets.only(top: 30,left: 15,right: 15,bottom: 15),
          height:  MediaQuery.of(context).size.height*.74,
          width:  MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
            boxShadow: [BoxShadow(
              blurRadius: 15,
              color: Colors.grey.shade200,

            ),],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text("Sign Up",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold,),),
              SizedBox(height: 8,),
              Text("sign up with your email and password",style: TextStyle(color: Colors.grey),),
              SizedBox(height: 40,),
              TxtFrmFld(labeltxt: 'First Name', hintxt: "Enter Your First Name",obs: false,),
              SizedBox(height: 20,),
              TxtFrmFld(labeltxt: 'Last Name', hintxt: "Enter Your last Name",obs: false,),
              SizedBox(height: 20,),
              TxtFrmFld(labeltxt: 'Email', hintxt: "Enter Your Email",obs: false,),
              SizedBox(height: 20,),
              TxtFrmFld(labeltxt: 'Phone', hintxt: "Enter Your Phone Number",obs: false,),
              SizedBox(height: 20,),
              TxtFrmFld(labeltxt: 'Password', hintxt: "Enter Your Password",obs: false,),
              SizedBox(height: 30,),
             customBtn(txt: "Sign Up", clr: Colors.white, op: (){
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) =>  CrudData1()),
               );
             }),



            ],
          ),
        ),
    ),

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(

              children: [
              Image.asset("assets/images/done1.png"),
              Text("I Agree With Terms And Conditions"),
              SizedBox(height: 41,),

            ],),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Dont you have an account?"),
              TextButton(onPressed: (){
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const SignUpForm()),
                // );
              }, child: InkWell(
                  onTap: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) =>  CrudData()),
                    // );
                  },
                  child: Text("signUp",style: TextStyle(color: Colors.pink),)),),
            ],
          ),
        ],),
      ),),
    );
  }
}
