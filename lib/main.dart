import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:firebase_core/firebase_core.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips/User/bloc/bloc_user.dart';
import 'package:trips/User/ui/screens/signin_screen.dart';
import 'package:trips/platzi_trips.dart';
import 'package:trips/platzi_trips_cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          print('error init firebase');
          print(snapshot.error);
        }

        if (snapshot.connectionState == ConnectionState.done) {
          print('firebase online');
          return BlocProvider(
            child: MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              // home: PlatziTripsCupertino(),
              home: SignIn(),
            ),
            bloc: UserBloc(),
          );
        }

        return Container();
      },
    );
  }
}
