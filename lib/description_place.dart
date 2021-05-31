import 'package:flutter/material.dart';

import 'button.dart';

class DescriptionPlace extends StatelessWidget {
  final String namePlace;
  final int stars;
  final String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

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

    final dialog = Container(
      margin: EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Text(
        descriptionPlace,
        textAlign: TextAlign.justify,
      ),
    );

    final titleStarts = Container(
        margin: EdgeInsets.only(top: 300),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 0, left: 20, right: 20),
              child: Text(
                namePlace,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  fontFamily: "Lato",
                ),
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
        ));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [titleStarts, dialog, Button()],
    );
  }
}
