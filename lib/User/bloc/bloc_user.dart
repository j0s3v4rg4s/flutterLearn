import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips/User/repository/auth_repository.dart';

class UserBloc implements Bloc {
  final _authRepository = AuthRepository();
  Stream<User?> streamUser = FirebaseAuth.instance.authStateChanges();
  Stream<User?> get auth => streamUser;

  Future<User> sighIn() {
    return _authRepository.signInFirebase();
  }

  sigOut() {
    return _authRepository.sigOut();
  }


  @override
  void dispose() {
    // TODO: implement dispose
  }

}