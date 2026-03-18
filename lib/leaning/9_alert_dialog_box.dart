import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogBox extends StatefulWidget {
  const AlertDialogBox({super.key});

  @override
  State<AlertDialogBox> createState() => _AlertDialogBoxState();
}

class _AlertDialogBoxState extends State<AlertDialogBox> {
  void _showBox() {
    showDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text("Title"),
          content: Text("Content, more info"),
          actions: [
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancel"),
            ),
            MaterialButton(onPressed: () {}, child: Text("Ok")),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: MaterialButton(
          color: Colors.cyan,
          onLongPress: _showBox,
          onPressed: () {},
          child: Text("show box", style: TextStyle(fontSize: 25)),
        ),
      ),
    );
  }
}
