import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:spice_bazaar/screens/home.dart';


class AuthenticationService {

  // 1
  final FirebaseAuth _firebaseAuth;

  AuthenticationService(this._firebaseAuth);

  // 2
  Stream<User> get authStateChanges => _firebaseAuth.authStateChanges();


  // 3
  Future<String> signIn(String email, String password) async {
    print(email);
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      return "Signed in";
  }

  // 4
  Future<String> signUp(String email, String password) async {
    print(email);
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    print(userCredential.user.uid);
    return "Signed up";
  }

  // 5
  Future<String> signOut() async {
    try {
      await _firebaseAuth.signOut();
      return "Signed out";
    } on FirebaseAuthException catch(e) {
      return e.message;
    }
  }

// 6
  User getUser() {
    try {
      return _firebaseAuth.currentUser;
    } on FirebaseAuthException {
      return null;
    }
  }


}
