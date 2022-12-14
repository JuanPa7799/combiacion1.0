import 'package:firebase_auth/firebase_auth.dart';
import 'package:combinacion1_0/User/repository/firebase_auth_api.dart';

class AuthRepository {
  final _firebaseAuthApi = FirebaseAuthAPI();
  Future<UserCredential?> signInFirebase() => _firebaseAuthApi.signIn();
  Future<User?> currentUser() => _firebaseAuthApi.currentUser();
  signOut() => _firebaseAuthApi.signOut();
}
