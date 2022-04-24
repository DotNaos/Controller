import 'dart:async';

import 'buttons.dart';
import 'package:flutter/material.dart';

class JoyPad extends StatefulWidget {
  JoyPad({Key? key}) : super(key: key);

  @override
  State<JoyPad> createState() => _JoyPadState();
}

class _JoyPadState extends State<JoyPad> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      //padding: EdgeInsets.only(top: 600),
      crossAxisCount: 3,
      children: [
        Container(),
        DirButton(i: 0),
        Container(),
        DirButton(i: 1),
        Container(),
        DirButton(i: 2),
        Container(),
        DirButton(i: 3),
        Container()
      ],
    );
  }
}

class DirButton extends StatefulWidget {
  final i;
  const DirButton({Key? key, this.i}) : super(key: key);

  @override
  State<DirButton> createState() => _DirButtonState(i);
}

class _DirButtonState extends State<DirButton> {
  int i;
  List<MaterialColor> color = [
    Colors.grey,
    Colors.grey,
    Colors.grey,
    Colors.grey
  ];
  _DirButtonState(this.i);

  void updateColor(final count, final next) {
    setState(() {
      color[count] = next;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        updateColor(i, Colors.red);
      },
      onTapUp: (details) {
        Timer(Duration(milliseconds: 50), (() => updateColor(i, Colors.grey)));
      },
      child: Button(
        arrow: i,
        color: color[i],
      ),
    );
  }
}
