import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthApi {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<User> signIn() async {
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication gsa = await googleSignInAccount.authentication;
    UserCredential credential = await _auth.signInWithCredential(GoogleAuthProvider.credential(
      idToken: gsa.idToken,
      accessToken: gsa.accessToken,
    ));

    return credential.user!;
  }

  signOut() async {
    await _auth.signOut().then((_) => print('log out'));
    googleSignIn.signOut();
  }
}
