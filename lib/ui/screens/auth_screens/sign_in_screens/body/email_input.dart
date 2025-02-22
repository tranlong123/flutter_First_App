import 'package:flutter/material.dart';
import 'package:new_project/styles/dimensions.dart';
import '../../../../widget/custom_input.dart';

class EmailInput extends StatelessWidget {
  final Function(String) onEmailChanged;
  final String? emailRegister;

  EmailInput(
      {super.key, required this.onEmailChanged, this.emailRegister});
  final TextEditingController controller = TextEditingController();

  String? emailValidator(String? email) {
    if (email == null || email.isEmpty) {
      return null;
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
      validator: emailValidator,
      isPassword: false,
      controller: controller,
      onChangedValue: onEmailChanged,
      initialValue: emailRegister,
    );
  }
}
