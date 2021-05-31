import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import 'card_image.dart';

class CardImageList extends StatelessWidget {
  const CardImageList();

  @override
  Widget build(BuildContext context) {
    final faker = new Faker();

    return Container(
      height: 350,
      child: ListView(
        padding: EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: [
          ...List.filled(10, null).map(
            (_) => CardImage(
              faker.image.image(
                width: 300,
                height: 300,
                keywords: ['landscapes'],
              ),
            ),
          )
        ],
      ),
    );
  }
}
