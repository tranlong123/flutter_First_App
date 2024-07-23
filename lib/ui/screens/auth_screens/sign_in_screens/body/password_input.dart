import 'package:flutter/material.dart';
import '../../../../widget/custom_input.dart';

class PasswordInput extends StatelessWidget {
  PasswordInput({super.key});
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomInput(
      labelText: 'Password',
      hintText: 'Enter your password',
      validator: (value) {
        return value == null || value.isEmpty ? 'Password cannot be empty' : null;
      },
      isPassword: true,
      controller: controller,
    );
  }
}