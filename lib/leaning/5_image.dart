import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Image.asset('lib/img/iron_man.jpg')));
  }
}
