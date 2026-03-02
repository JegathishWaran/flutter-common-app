import 'package:comman_app/components/button.dart';
import 'package:comman_app/components/text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // logo
                const Icon(Icons.lock, size: 100),
                
                const SizedBox(height: 50),
                // welcome message
                Text("Welcome back, you've been missed!",
                style: TextStyle(
                  color: Colors.grey[700],
                ),
                ),
                const SizedBox(height: 25),
            
                // email text field
                MyTextField(
                  controller: emailTextController,
                  hintText: 'Email',
                  obscuretext: false),

                const SizedBox(height: 10),
                // password text field
                MyTextField(
                  controller: passwordTextController,
                  hintText: 'Password',
                  obscuretext: true),

                const SizedBox(height: 25),

                // sign in button
                MyButton(onTap: (){}, text: "Sign In"),

                const SizedBox(height: 25),

                // go to register page

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a member?",
                      style: TextStyle(color: Colors.grey[700])),
                    const SizedBox(width: 4,),
                    Text(
                      "Not a member?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue)),
                  ],
                )

              ],
            ),
          ),
        ),
      ),

    );
  }
}