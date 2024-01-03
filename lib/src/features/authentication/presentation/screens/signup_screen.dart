import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        
        child: Text(
          "Signup page",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
