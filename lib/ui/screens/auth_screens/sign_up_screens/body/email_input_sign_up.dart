import 'package:flutter/material.dart';
import 'package:new_project/styles/dimensions.dart';
import '../../../../widget/custom_input.dart';

class EmailInputSignUp extends StatelessWidget {
  final String? initialValue;
  final Function(String) onEmailChanged;

  EmailInputSignUp(
      {super.key, this.initialValue, required this.onEmailChanged});
  final TextEditingController controller = TextEditingController();

  String? emailValidator(String? email) {
    if (email == null || email.isEmpty) {
      return '';
    }
    final regex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    return regex.hasMatch(email) ? null : 'Invalid email address';
  }

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return CustomInput(
      labelText: 'Email',
      hintText: 'Enter your email',
      pngPath: 'assets/png/email-outline.png',
      initialValue: initialValue,
      validator: emailValidator,
      isPassword: false,
      controller: controller,
      onChangedValue: onEmailChanged,
    );
  }
}
