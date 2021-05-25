import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin: EdgeInsets.only(
        top: 0,
        right: 3,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2c611),
      ),
    );

    final titleStarts = Container(
      margin: EdgeInsets.only(top: 320),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 0, left: 20, right: 20),
            child: Text(
              "Jose Vargas",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              textAlign: TextAlign.left,
            ),
          ),
          Row(
            children: [
              star,
              star,
              star,
              star,
              star,
            ],
          )
        ],
      ),
    );

    return titleStarts;
  }
}
