// import 'package:easyshop/Utils/View/text_filed.dart';
// import 'package:easyshop/AuthModule/View/customtextform.dart';
// import 'package:easyshop/AuthModule/View/sign_up.dart';
// import 'package:easyshop/FirebaseModule/View/googlesignin.dart';
// import 'package:easyshop/Home/View/home.dart';
// import 'package:easyshop/Utils/View/textformfield1.dart';
// import 'package:easyshop/crud_data.dart';
import 'package:easyshoponline/AuthModule/View/Components/custom_textfield.dart';
import 'package:easyshoponline/AuthModule/View/sign-up.dart';
import 'package:easyshoponline/Modules/FirebaseModule/View/googlesignin.dart';
import 'package:easyshoponline/Modules/FirebaseModule/crud-data.dart';
import 'package:easyshoponline/Modules/HomeModule/View/Components/home.dart';
// import 'package:easyshoponline/crud-data.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// mport 'package:easyshop/FirebaseModule/signin_google.dart';
class SignIn extends StatefulWidget {
  const SignIn({ Key? key }) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String email='', password='';
  final emailcontroller=TextEditingController();
  final passwordcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SizedBox(height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,

      child: SingleChildScrollView(
        child: Column(

          children: [

          Padding(
            padding: const EdgeInsets.only(top: 91,left: 20,right: 20),
            child:
            Container(
              padding: EdgeInsets.only(top: 30,left: 15,right: 15,bottom: 15),
              height: MediaQuery.of(context).size.height*.51,
              width: MediaQuery.of(context).size.width,
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
                // crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                // Padding(padding: EdgeInsets.all( 30,),),
                Padding(padding: EdgeInsets.only(top: 30,left: 15),),
                Text("Welcome To EasyShop",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold,),),
                  SizedBox(height: 8,),
                  Text("sign in to continue",style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 30,),
                  // TextFormFieldConstructer(label: "khan", icon: Icons.arrow_back),
// _custom1("Email", Icons.email, context),
                 customtf(labeltxt: 'Email',hintxt: "Enter your email",obs: false,ochng: (Value) async{
                  setState(() {
                    email=Value;
                  });
                 },), 
                  SizedBox(height: 20,),
                   customtf(labeltxt: 'Password',hintxt: "Enter your pasword",obs: true,ochng: (Value) async{
                 setState(() {
                   password=Value;
                 });
                 },),
                  SizedBox(height: 15,),

                  Align(
                    alignment: Alignment.bottomRight,
                      child: TextButton(onPressed: (){}, child: Text("Forget Password?",style: TextStyle(color: Colors.black),),)),
                  SizedBox(height: 10,),
                  MaterialButton(
                    height: 60,
                    minWidth: 500,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    color: Colors.blue[600],
                    onPressed: ()async {
                      try {
                            UserCredential
                        usercredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: email,
                        password: password,
                                            );
                         print(usercredential.user?.uid);
                       }
                       on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                        print('No user found for that email.');
                                                                   }
                         else if (e.code == 'wrong-password') {
                        print('Wrong password provided for that user.');
                 }
                      }

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  HomePage()),
                      );
                    },
                    child: Column(
                      children: const [
                        Text(
                          "Sign In",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
              ],),

            ),
          ),
          SizedBox(height: 25,),
            InkWell(
              onTap: (){},
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(

                  height: MediaQuery.of(context).size.height*0.05,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.black,
                  decoration: BoxDecoration(
                    // color: Colors.white,
                    border: Border.all(color: Colors.grey.shade500),
                  ),

                  child: Row(children: [
                    Padding(padding: EdgeInsets.only(left: 15,right: 15),),

                               Image.asset("assets/images/fb.png"),
                               Spacer(),
                               Text(
                                 "Sign In with facebook",
                                 style: TextStyle(color: Colors.black,fontSize: 14),
                               ),
                               Spacer(),
                             ],
                  ),
                ),
              ),
            ),
              /// Facebook button
          // Padding(
          //   padding: const EdgeInsets.only(left: 20,right: 20),
          //   child: MaterialButton(
          //     height: 60,
          //     minWidth: 500,
          //
          //     shape: RoundedRectangleBorder(
          //
          //       borderRadius: BorderRadius.circular(4),
          //
          //     ),
          //
          //     color: Colors.white,
          //     onPressed: () async {
          //
          //       // Navigator.push(
          //       //   context,
          //       //   MaterialPageRoute(
          //       //       builder: (context) => const ProfilePage()),
          //       // );
          //     },
          //     child: Column(
          //       children:  [
          //         Padding(padding: EdgeInsets.only(left: 30,right: 30),),
          //        Row(
          //          children: [
          //            Image.asset("assets/images/fb.png"),
          //            Spacer(),
          //            Text(
          //              "Sign In with facebook",
          //              style: TextStyle(color: Colors.black,fontSize: 14),
          //            ),
          //            Spacer(),
          //          ],
          //        ),
          //       ],
          //     ),
          //   ),
          //
          //
          // ),
        SizedBox(height: 20,),
            InkWell(
              onTap: () async {
                UserCredential user = await GoogleSignInService().onSignIn();
                      print("user");
                       print(user);
                       if (user != null) {}
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(

                  height: MediaQuery.of(context).size.height*0.05,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.black,
                  decoration: BoxDecoration(
                    // color: Colors.white,
                    border: Border.all(color: Colors.grey.shade500),
                  ),

                  child: Row(children: [
                    Padding(padding: EdgeInsets.only(left: 15,right: 15),),

                    Image.asset("assets/images/google.png"),
                    Spacer(),
                    Text(
                      "Sign In with Google",
                      style: TextStyle(color: Colors.black,fontSize: 14),
                    ),
                    Spacer(),
                  ],
                  ),
                ),
              ),
            ),
        ///Google Button
        // Padding(
        //   padding: const EdgeInsets.only(left: 20,right: 20),
        //   child: MaterialButton(
        //     height: 60,
        //     minWidth: 500,
        //
        //     shape: RoundedRectangleBorder(
        //
        //       borderRadius: BorderRadius.circular(4),
        //
        //     ),
        //
        //     color: Colors.white,
        //     onPressed: () async {
        //       UserCredential user = await GoogleSignInService().onSignIn();
        //       print("user");
        //       print(user);
        //       if (user != null) {}
        //       // Navigator.push(
        //       //   context,
        //       //   MaterialPageRoute(
        //       //       builder: (context) => const ProfilePage()),
        //       // );
        //     },
        //     child: Column(
        //       children:  [
        //         Padding(padding: EdgeInsets.only(left: 30,right: 30),),
        //         Row(
        //           children: [
        //             Image.asset("assets/images/google.png"),
        //             Spacer(),
        //             Text(
        //               "Sign In with Google",
        //               style: TextStyle(color: Colors.black,fontSize: 14),
        //             ),
        //             Spacer(),
        //           ],
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
            SizedBox(height: 91,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Dont you have an account?"),
                TextButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUpForm()),
                  );
                }, child: InkWell(
                  onTap: (){
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) =>  FirestoreCRUD()),
                    //   );
                  },
                  child: InkWell(
                    onTap: (){
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  SignUpForm()),
                      );
                    },
                    child: Text("signUp",style: TextStyle(color: Colors.pink),))),),
              ],
            ),
          ],
        ),
      ),
      ),
    );
  }
}
// Widget _custom1(final label, final icon, context) {
//   return
//
//
//
//
//
//         TextFormField(
//           decoration: InputDecoration(
//             label: label,
//             icon: icon,
//
//           ),
//         );
//
// }

