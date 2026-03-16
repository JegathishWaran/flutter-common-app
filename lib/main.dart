import 'package:comman_app/leaning/7_gesture_detector.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureDetector_(),
      theme: ThemeData(primaryColor: Colors.yellow),
    );
  }
}
