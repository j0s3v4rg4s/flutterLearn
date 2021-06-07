import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final VoidCallback onPress;
  final String name;
  double? height = 50;

  Button({Key? key, required this.onPress, required this.name, this.height})
      : super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPress,
      child: Container(
        height: widget.height,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Text(
          widget.name,
          style: TextStyle(fontSize: 20, fontFamily: "Lato"),
        ),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black54.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(0, 10),
          ),
        ], borderRadius: BorderRadius.circular(5), color: Colors.white),
      ),
    );
  }
}
