import 'package:flutter/material.dart';
import '../../../../widget/custom_input.dart';

class PasswordInput extends StatelessWidget {
  final String? pass;

  PasswordInput({super.key, this.pass});
  final TextEditingController controller = TextEditingController();
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
      initialValue: pass,
    );
  }
}
