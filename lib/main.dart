import 'package:comman_app/leaning/8_animatedDart.dart';
import 'package:comman_app/leaning/9_alert_dialog_box.dart';
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

      home: AlertDialogBox(),
      theme: ThemeData(primaryColor: Colors.yellow),
    );
  }
}
