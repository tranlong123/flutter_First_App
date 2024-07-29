import 'package:flutter/material.dart';
import '../../../../widget/custom_input.dart';

class PassSignUp extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onPassChanged;
  const PassSignUp({super.key, required this.controller, required this.onPassChanged});
  String? passWordValidator(String? password) {
    return password == null || password.isEmpty ? '' : null;
  }

  @override
  Widget build(BuildContext context) {
    return CustomInput(
      labelText: 'Password',
      hintText: 'Enter your password',
      validator: passWordValidator,
      isPassword: true,
      controller: controller,
      onChangedValue: onPassChanged,
    );
  }
}
