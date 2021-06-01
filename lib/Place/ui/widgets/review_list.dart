import 'package:flutter/material.dart';

import 'package:faker/faker.dart';

import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review(
          faker.image.image(keywords: ['people'], random: true),
          faker.person.name() + " " + faker.person.lastName(),
          "1 review · 5 photos",
          faker.lorem.sentence(),
        ),
        Review(
          faker.image.image(keywords: ['person']),
          faker.person.name() + " " + faker.person.lastName(),
          "2 review · 5 photos",
          faker.lorem.sentence(),
        ),
        Review(
          faker.image.image(keywords: ['avatar'], random: true),
          faker.person.name() + " " + faker.person.lastName(),
          "2 review · 2 photos",
          faker.lorem.sentence(),
        ),
      ],
    );
  }
}
