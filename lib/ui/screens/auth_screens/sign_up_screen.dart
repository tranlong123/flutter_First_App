import 'package:flutter/material.dart';
import '../../../styles/colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        backgroundColor: bgColor,
      ),
      body: const Center(
        child: Text('Sign Up Screen'),
      ),
    );
  }
}
