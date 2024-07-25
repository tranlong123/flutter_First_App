import 'package:flutter/material.dart';
import 'package:new_project/ui/screens/auth_screens/sign_up_screens/body/sign_up_form.dart';
import '../../../../../styles/dimensions.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  SignUpBodyState createState() => SignUpBodyState();
}

class SignUpBodyState extends State<SignUpBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isButtonEnabled = false;

  void _updateButtonState() {
    setState(() {
      _isButtonEnabled = _formKey.currentState?.validate() ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);

    return SignUpForm(
      formKey: _formKey,
      isButtonEnabled: _isButtonEnabled,
      onFormChanged: _updateButtonState,
      onSignInPressed: () {
        if (_formKey.currentState?.validate() ?? false) {
          // Xử lý sự kiện đăng nhập
          // ignore: avoid_print
          print('Processing Sign up');
        }
      },
    );
  }
}
