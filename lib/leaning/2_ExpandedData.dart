import 'package:flutter/material.dart';

class Expandeddata extends StatelessWidget {
  const Expandeddata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(flex: 5, child: Container(color: Colors.blueAccent)),
          Expanded(child: Container(color: Colors.redAccent)),
          Expanded(flex: 6, child: Container(color: Colors.pink)),
        ],
      ),
      // body: Column(
      //   children: [
      //     Expanded(flex: 5, child: Container(color: Colors.blueAccent)),
      //     Expanded(child: Container(color: Colors.redAccent)),
      //     Expanded(child: Container(color: Colors.pink)),
      //   ],
      // ),
    );
  }
}
