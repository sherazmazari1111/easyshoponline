import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInService {
  final googleSignIn = GoogleSignIn(
    scopes: <String>[
      // 'email',
      // 'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );
  // GoogleSignInAccount? _user;
  //
  // GoogleSignInAccount get user => _user!;

  onSignIn() async {
    final googleUser = await googleSignIn.signIn();
    if (googleUser == null) return;
    // _user = googleUser;
    print("googleUser");
    print(googleUser);
    final googleAuth = await googleUser.authentication;
    print("googleAuth");
    print(googleAuth);
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  onGoogleLogout() {}
//   onGoogleLogout() async {
//     googleSignIn.disconnect();
//     googleSignIn.signOut();
//   }
}