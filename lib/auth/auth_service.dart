import 'package:firebase_auth/firebase_auth.dart';
import 'package:healthn/db/db_helper.dart';

class AuthService {
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static User? get currentUser => _auth.currentUser;

  static Future<bool> loginAdmin(String email, String password) async {
    final crediential = await _auth.signInWithEmailAndPassword(email: email, password: password);
    // return crediential.user != null;
    return DbHelper.isAdmin(crediential.user!.uid);

  }
  static Future<void> logout(){
    return _auth.signOut();
  }
}