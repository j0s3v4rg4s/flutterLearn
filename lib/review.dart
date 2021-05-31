import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String path;
  String name;
  String description;

  Review(this.name, this.description, this.path);

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      margin: EdgeInsets.only(top: 20, left: 20),
      child: CircleAvatar(
        foregroundImage: NetworkImage(this.path),
        backgroundColor: Colors.amberAccent,
        radius: 40,
      ),
    );

    final information = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          this.name,
          style: TextStyle(fontSize: 33),
        ),
        Container(
          margin: EdgeInsets.only(right: 10),
          child: Text(
            this.description,
            style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
          ),
        )
      ],
    );

    return Row(
      children: [
        photo,
        Expanded(child: information),
      ],
    );
  }
}
