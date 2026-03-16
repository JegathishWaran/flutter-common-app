import 'package:flutter/material.dart';

class Containerdata extends StatelessWidget {
  const Containerdata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.bottomLeft,
          // padding: EdgeInsets.all(15),
          width: 200,
          height: 200,
          // if  u use decoration do not use color here
          // color: Colors.blueAccent,
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(15),
            // shape: BoxShape.circle,
            // color: Colors.amber,
            border: Border.all(color: Colors.teal, width: 5),
            // borderRadius: BorderRadius.horizontal(left: Radius.circular(15)),
          ),
          // child: Center(child: Text("hello")),
          child: Text("Hello", style: TextStyle(fontSize: 26)),
        ),
      ),
    );
  }
}
