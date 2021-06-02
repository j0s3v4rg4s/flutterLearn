import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:firebase_core/firebase_core.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips/User/bloc/bloc_user.dart';
import 'package:trips/platzi_trips.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final Future<FirebaseApp> _initApp = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));
    return FutureBuilder(
      future: _initApp,
      builder: (context, snapshot) {
        print('init firebase');
        if (snapshot.hasError) {
          print('error init firebase');
          print(snapshot.error);
        }

        if (snapshot.connectionState == ConnectionState.done) {
          print('firebase online');
        }

        return BlocProvider(
          child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: PlatziTrips(),
          ),
          bloc: UserBloc(),
        );
      },
    );
  }
}
