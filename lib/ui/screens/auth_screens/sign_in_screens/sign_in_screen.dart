import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_project/ui/screens/auth_screens/sign_in_screens/body/sign_in_body.dart';
import 'package:new_project/ui/screens/auth_screens/sign_in_screens/footer/sign_in_footer.dart';
import 'package:new_project/ui/screens/auth_screens/sign_in_screens/header/sign_in_header.dart';
import '../../../../styles/colors.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  String _email = '';

  void _updateEmail(String email) {
    setState(() {
      _email = email;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Đặt màu status bar
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: bgColor,
      statusBarIconBrightness: Brightness.dark,
    ));
final Map<String, String>? args =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>?;
    final String? emailRegister = args?['emailRegister'] ;
    final String? pass = args?['pass'];
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SignInHeader(email: _email),
              SignInBody(
                  onEmailChanged: _updateEmail,
                  emailRegister: emailRegister,
                  pass: pass),
              const SignInFooter()
            ],
          ),
        ),
      ),
    );
  }
}
