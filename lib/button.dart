import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
        left: 20,
        right: 20,
      ),
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("navegando"))
          );
        },
        child: Container(
          height: 50,
          width: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.cyan
          ),
          child: Center(
            child: Text(
              'navigate',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
