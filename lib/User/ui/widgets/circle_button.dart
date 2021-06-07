import 'package:flutter/material.dart';

class CircleButton extends StatefulWidget {
  bool mini;
  var icon;
  double iconSize;
  var color;
  VoidCallback onPress;

  CircleButton(this.mini, this.icon, this.iconSize, this.color, this.onPress);

  @override
  State<StatefulWidget> createState() {
    return _CircleButton();
  }

}

class _CircleButton extends State<CircleButton> {

  void onPressedButton() {
    widget.onPress();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: FloatingActionButton(
          backgroundColor: widget.color,
          mini: widget.mini,
          onPressed: onPressedButton,
          child: Icon(
            widget.icon,
            size: widget.iconSize,
            color: Color(0xFF4268D3),
          ),
        )
    );
  }
}