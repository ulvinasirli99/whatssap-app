import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';

class AuthService {



  final FirebaseAuth _auth = FirebaseAuth.instance;


  // Future<FirebaseUser> get currentUser => _auth.currentUser;

  Future<FirebaseUser> signIn() async {

    var user = await _auth.signInAnonymously();

    return user.user;
  }
}