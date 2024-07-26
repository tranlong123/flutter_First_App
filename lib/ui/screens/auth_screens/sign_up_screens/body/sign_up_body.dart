import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:image_picker/image_picker.dart';
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
  bool _isChecked = false;
  XFile? _image;

  void _updateButtonState() {
    setState(() {
      _isButtonEnabled = (_formKey.currentState?.validate() ?? false) && _isChecked && _image != null;
    });
  }

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);

    return SignUpForm(
      formKey: _formKey,
      isButtonEnabled: _isButtonEnabled,
      isChecked: _isChecked,
      onFormChanged: _updateButtonState,
      onSignInPressed: () {
        if (_formKey.currentState?.validate() ?? false) {
          // ignore: avoid_print
          print('Processing Sign Up');
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
