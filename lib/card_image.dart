import 'package:flutter/material.dart';

import 'floating_button.dart';

class CardImage extends StatelessWidget {
  final String pathImage;

  CardImage(this.pathImage);

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 350,
      width: 250,
      margin: EdgeInsets.only(
          top: 80,
          left: 20
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(this.pathImage)
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15,
                offset: Offset(0, 7)
            )
          ]
      ),
    );
    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: [
        card,
        FloatingActionGreen(),
      ],
    );
  }
}
