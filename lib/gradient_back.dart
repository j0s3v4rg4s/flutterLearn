import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268d3),
            Color(0xFF584cd1)
          ],
          begin: FractionalOffset(0.2, 0.5),
          end: FractionalOffset(1, 0),
          stops: [0, 1],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Text(
        "Popular",
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
      ),
      alignment: Alignment(-0.9, -0.6),
    );
  }
}
