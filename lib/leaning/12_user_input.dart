import 'package:flutter/material.dart';

class UserInputs extends StatefulWidget {
  const UserInputs({super.key});

  @override
  State<UserInputs> createState() => _UserInputsState();
}

class _UserInputsState extends State<UserInputs> {

  final _textController = TextEditingController();

  String header = "";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                child: Center(child: Text(header)),
              ),
            ),

            TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'what\'s on your main?',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(onPressed: (){
                  _textController.clear();

                }, icon: const Icon(Icons.clear))
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: (){
                  setState(() {
                    header = _textController.text;
                     _textController.clear();
                  });
                },
              color: Colors.blue,
              // color:,
              child: Text('Click', style: TextStyle(color: Colors.white),),
              
              ),
            )
          ],
        ),
      ),
    );
  }
}