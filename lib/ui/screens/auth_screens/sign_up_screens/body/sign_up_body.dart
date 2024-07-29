import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:image_picker/image_picker.dart';
import 'package:new_project/ui/screens/auth_screens/sign_up_screens/body/sign_up_form.dart';
import '../../../../../styles/dimensions.dart';

class SignUpBody extends StatefulWidget {
  final String? data;

  const SignUpBody({super.key, this.data});

  @override
  SignUpBodyState createState() => SignUpBodyState();
}

class SignUpBodyState extends State<SignUpBody> {
  String _emailRegister = '';

  void _updateEmail(String email) {
    setState(() {
      _emailRegister = email;
    });
  }

  String _pass = '';

  void _updatePass(String pass) {
    setState(() {
      _pass = pass;
    });
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isButtonEnabled = false;
  bool _isChecked = false;
  XFile? _image;

  void _updateButtonState() {
    setState(() {
      _isButtonEnabled = (_formKey.currentState?.validate() ?? false) &&
          _isChecked &&
          _image != null;
    });
  }

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);

    return SignUpForm(
      formKey: _formKey,
      isButtonEnabled: _isButtonEnabled,
      isChecked: _isChecked,
      data: widget.data,
      pass: _pass,
      email: _emailRegister,
      onEmailChanged:_updateEmail,
      onPassChanged: _updatePass,
      onFormChanged: _updateButtonState,
      onSignUpPressed: () {
        if (_formKey.currentState?.validate() ?? false) {
          Navigator.pushNamed(context, '/WelcomeScreen',
              arguments: {'emailRegister': _emailRegister, 'pass': _pass});
        }
      },
      onCheckboxChanged: (bool? value) {
        setState(() {
          _isChecked = value ?? false;
          _updateButtonState();
        });
      },
      onImageChanged: (XFile? image) {
        setState(() {
          _image = image;
          _updateButtonState();
        });
      },
    );
  }
}
