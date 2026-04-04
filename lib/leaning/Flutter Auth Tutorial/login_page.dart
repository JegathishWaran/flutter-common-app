import 'package:comman_app/components/my_text_field.dart';
import 'package:comman_app/components/s_button.dart';
import 'package:comman_app/components/square_title.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
    LoginPage({super.key});

  final usernameController = TextEditingController();
  final passworkController = TextEditingController();

  void singUserIn(){

  }

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 50,),

              const Icon(Icons.lock , size: 100,),

              const SizedBox(height: 50,),

              Text("Welcome back you've been missed", 
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16),),

              const SizedBox(height: 25,),
              
              MyTextField_(controller: usernameController, hintText: "User Name", obscureText: false),
              
              const SizedBox(height: 10,),
              
              MyTextField_(controller: passworkController, hintText: "Password", obscureText: true),
              
              const SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Forgot Password?" , style: TextStyle(color: Colors.grey[600]),),
                  ],
                ),
              ),

              const SizedBox(height: 20,),

              SButton(
                onTap: singUserIn,
              ),
            const SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Text('Or continue with', style: TextStyle(color: Colors.grey[700]),),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),

                    
                  ],
                ),
              ),
              const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  SquareTitle(imagePath: "lib/img/google-logo-icon.png",),
                  const SizedBox(width: 10,),
                  SquareTitle(imagePath: "lib/img/Apple logo.jpg",)
                ],
              ),
              const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member?'),
                  const SizedBox(width: 4,),
                  Text("Register now" ,style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),)
                ])

            ],
          ),
        ),
      ),
    );
  }
}