// lib/ui/screens/auth_screens/sign_in_screens/body/sign_in_form.dart
import 'package:flutter/material.dart';
import 'package:new_project/ui/screens/auth_screens/sign_in_screens/body/email_input.dart';
import 'package:new_project/ui/screens/auth_screens/sign_in_screens/body/forgot_password.dart';
import 'package:new_project/ui/screens/auth_screens/sign_in_screens/body/password_input.dart';
import 'package:new_project/ui/screens/auth_screens/sign_in_screens/body/sign_in_button.dart';
import '../../../../../styles/dimensions.dart';

class SignInForm extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final bool isButtonEnabled;
  final VoidCallback onFormChanged;
  final VoidCallback onSignInPressed;

  const SignInForm({
    super.key,
    required this.formKey,
    required this.isButtonEnabled,
    required this.onFormChanged,
    required this.onSignInPressed,
  });

  @override
  SignInFormState createState() => SignInFormState();
}

class SignInFormState extends State<SignInForm> {
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);

    return Padding(
      padding: EdgeInsets.only(top: AppDimensions.screenHeight * 40 / 706),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30)), // Áp dụng borderRadius
        ),
        child: SizedBox(
          width: AppDimensions.screenWidth,
          height: AppDimensions.signInBodyHeight,
          child: Form(
            key: widget.formKey,
            onChanged: widget.onFormChanged,
            child: Column(
              children: [
                SizedBox(
                  height: AppDimensions.screenHeight * 25 / 706,
                ),
                EmailInput(),
                SizedBox(
                  height: AppDimensions.screenHeight * 29 / 706,
                ), // Thêm khoảng cách giữa các widget
                PasswordInput(),
                SizedBox(
                  height: AppDimensions.screenHeight * 4 / 706,
                ),
                ForgotPassword(),
                SizedBox(
                  height: AppDimensions.screenHeight * 33 / 706,
                ), // Thêm khoảng cách giữa các widget
                SignInButton(
                  isEnabled: widget.isButtonEnabled,
                  onPressed: widget.onSignInPressed,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
