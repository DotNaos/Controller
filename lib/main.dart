import 'package:flutter/material.dart';
import 'package:rover_controller/widgets/joypad.dart';

void main(List<String> args) {
  runApp(Controller());
}

class Controller extends StatelessWidget {
  const Controller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      title: "The Controller",
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment(0, 1),
        child: Container(
          width: 200,
          height: 250,
          child: JoyPad(),
        ),
      ),
    );
  }
}
