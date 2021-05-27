import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  final String path = "assets/img/download.jpg";


  @override
  Widget build(BuildContext context) {
    final photo = Container(
      margin: EdgeInsets.only(top: 20, left: 20),
      child: CircleAvatar(
        foregroundImage: AssetImage(path),
        backgroundColor: Colors.amberAccent,
        radius: 40,
      ),
    );

    return Row(
      children: [photo],
    );
  }
}
