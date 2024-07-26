import 'package:flutter/material.dart';
import 'package:new_project/ui/screens/auth_screens/sign_up_screens/body/sign_up_body.dart';
import 'package:new_project/ui/screens/auth_screens/sign_up_screens/header/sigin_up_header.dart';
import '../../../../styles/colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: SingleChildScrollView(
          child: Column(
            children: [SiginUpHeader(), SignUpBody()],
          ),
        ),
      ),
    );
  }
}
