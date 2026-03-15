import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final String child;

  const Square({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        alignment: Alignment.center,
        height: 200,
        color: Colors.amber,
        child: Text(child, style: TextStyle(fontSize: 25)),
      ),
    );
  }
}
