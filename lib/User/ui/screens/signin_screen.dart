import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trips/User/bloc/bloc_user.dart';
import 'package:trips/platzi_trips.dart';
import 'package:trips/platzi_trips_cupertino.dart';
import 'package:trips/widgets/button.dart';
import 'package:trips/widgets/gradient_back.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  UserBloc? userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    return StreamBuilder<User?>(
      stream: userBloc?.auth,
      builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.active) {
          return snapshot.hasData ? PlatziTrips() : signInGoogleUi();
        } else {
          return Container();
        }
      },
    );
  }

  Widget signInGoogleUi() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GradientBack("", null),
          Wrap(
            direction: Axis.vertical,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 20,
            children: [
              Text(
                "Welcome \n this is your tripe app",
                style: TextStyle(
                    fontSize: 37,
                    fontFamily: "Lato",
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Button(
                onPress: () => userBloc?.sighIn().then((value) => print(value.uid)),
                name: "Sign in with google",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
