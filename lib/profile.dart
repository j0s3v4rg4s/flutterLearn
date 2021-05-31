import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: width,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF2B58C1), Color(0xFF572DC4)],
          tileMode: TileMode.clamp,
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          stops: [0, 0.5]
        ),
      ),
    );
  }
}
