import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_project/ui/screens/auth_screens/sign_in_screens/body/sign_in_body.dart';
import 'package:new_project/ui/screens/auth_screens/sign_in_screens/footer/sign_in_footer.dart';
import 'package:new_project/ui/screens/auth_screens/sign_in_screens/header/sign_in_header.dart';
import '../../../../styles/colors.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Đặt màu status bar
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: bgColor,
      statusBarIconBrightness: Brightness.dark,
    ));

    return const SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SignInHeader(),
              SignInBody(),
              SignInFooter()
            ],
          ),
        ),
      ),
    );
  }
}
