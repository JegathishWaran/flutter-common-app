import 'package:comman_app/leaning/12_user_input.dart';
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

      home: UserInputs(),
      theme: ThemeData(primaryColor: Colors.yellow),
    );
  }
}
