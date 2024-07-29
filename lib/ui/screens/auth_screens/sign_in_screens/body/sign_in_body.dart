import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_project/ui/screens/auth_screens/sign_in_screens/body/sign_in_form.dart';
import '../../../../../styles/dimensions.dart';

class SignInBody extends StatefulWidget {
  final Function(String) onEmailChanged;
  final String? emailRegister;
  final String? pass;
  const SignInBody(
      {super.key, required this.onEmailChanged, this.emailRegister, this.pass});

  @override
  SignInBodyState createState() => SignInBodyState();
}

class SignInBodyState extends State<SignInBody> {
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

    return SignInForm(
      formKey: _formKey,
      emailRegister: widget.emailRegister,
      pass: widget.pass,
      isButtonEnabled: _isButtonEnabled,
      onFormChanged: _updateButtonState,
      onEmailChanged: widget.onEmailChanged,
      onSignInPressed: () {
        if (_formKey.currentState?.validate() ?? false) {
          // Xử lý sự kiện đăng nhập
          // ignore: avoid_print
          print('Processing Sign In');
        }
      },
    );
  }
}
