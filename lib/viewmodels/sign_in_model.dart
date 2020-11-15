import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:whatssapappflutter/core/locator.dart';
import 'package:whatssapappflutter/core/services/auth_service.dart';
import 'package:whatssapappflutter/screens/whatssap_main.dart';
import 'base_model.dart';

class SignInModel extends BaseModel {
  final AuthService _authService = getIt<AuthService>();
  final Firestore _firestore = Firestore.instance;

  // Future<FirebaseUser> get currentUser => _authService.currentUser;

  Future<void> signIn(String userName) async {
    if (userName.isEmpty) return;

    busy = true;

    try {
      var user = await _authService.signIn();

      await _firestore.collection('profile').document(user.uid).setData(
          {'userName': userName, 'image': 'https://placekitten.com/200/200'});

      await navigatorService.navigateToReplace(WhatsAppMain());
    } catch (e) {
      busy = false;
    }

    busy = false;
  }
}