import 'package:flutter/material.dart';
import 'package:new_project/ui/screens/auth_screens/sign_up_screens/body/sign_up_body.dart';
import 'package:new_project/ui/screens/auth_screens/sign_up_screens/header/sigin_up_header.dart';
import '../../../../styles/colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final String? data = ModalRoute.of(context)!.settings.arguments as String?;
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: SingleChildScrollView(
          child: Column(
            children: [const SiginUpHeader(), SignUpBody(data: data)],
          ),
        ),
      ),
    );
  }
}
