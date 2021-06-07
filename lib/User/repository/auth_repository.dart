import 'package:firebase_auth/firebase_auth.dart';

import 'firebase_auth_api.dart';

class AuthRepository {
  final _fireAuthApi = FirebaseAuthApi();

  Future<User> signInFirebase() => _fireAuthApi.signIn();

  sigOut() => _fireAuthApi.signOut();
}