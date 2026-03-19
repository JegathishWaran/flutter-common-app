import 'package:flutter/material.dart';

class UserInputs extends StatefulWidget {
  const UserInputs({super.key});

  @override
  State<UserInputs> createState() => _UserInputsState();
}

class _UserInputsState extends State<UserInputs> {

  final _textController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'what\'s on your main?',
                border: OutlineInputBorder()
              ),
            )
          ],
        ),
      ),
    );
  }
}