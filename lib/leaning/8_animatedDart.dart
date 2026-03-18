import 'package:flutter/material.dart';

class AnimatedDart extends StatefulWidget {
  const AnimatedDart({super.key});

  @override
  State<AnimatedDart> createState() => _AnimatedDartState();
}

class _AnimatedDartState extends State<AnimatedDart> {
  double boxheight = 50;
  double boxWeight = 50;
  var boxColor = Colors.pink;
  double boxX = -1;
  double boxY = -1;

  void _expandBox() {
    setState(() {
      boxheight = 300;
      boxWeight = 300;
      boxColor = Colors.amber;
      boxX = 1;
      boxY = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: GestureDetector(
          onTap: _expandBox,
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            alignment: Alignment(boxX, boxY),
            child: Container(
              height: boxheight,
              width: boxWeight,
              color: boxColor,
            ),
          ),
        ),
      ),
    );
  }
}
