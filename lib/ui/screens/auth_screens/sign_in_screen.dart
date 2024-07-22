import 'package:flutter/material.dart';
import '../../../styles/colors.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
        backgroundColor: bgColor,
      ),
      body: const Center(
        child: Text('Sign In Screen'),
      ),
    );
  }
}
