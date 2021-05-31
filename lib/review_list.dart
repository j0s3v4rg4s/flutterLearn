import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final faker = new Faker();

    return Column(
      children: [
        ...List.filled(
          10,
          null,
        ).map(
          (e) => Review(
            faker.person.name(),
            faker.lorem.sentence(),
            faker.image.image(keywords: ['people'], random: true),
          ),
        ),
      ],
    );
  }
}
