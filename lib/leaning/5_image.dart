import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Image.asset('lib/img/iron_man.jpg',
      fit: BoxFit.scaleDown,))));
  }
}
