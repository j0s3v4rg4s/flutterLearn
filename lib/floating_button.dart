import 'package:flutter/material.dart';

class FloatingActionGreen extends StatefulWidget {
  @override
  _FloatingActionGreenState createState() => _FloatingActionGreenState();
}

class _FloatingActionGreenState extends State<FloatingActionGreen> {
  bool isFavorite = false;

  void onPress() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPress,
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      child: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
    );
  }
}