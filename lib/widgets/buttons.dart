import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final color;
  final List<IconData> arrows = [
    Icons.arrow_upward,
    Icons.arrow_back,
    Icons.arrow_forward,
    Icons.arrow_downward
  ];
  final arrow;

  Button({Key? key, this.color, required this.arrow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        color: color,
        width: 50,
        height: 50,
        child: Center(
          child: Icon(
            arrows[arrow],
          ),
        ),
      ),
    );
  }
}
