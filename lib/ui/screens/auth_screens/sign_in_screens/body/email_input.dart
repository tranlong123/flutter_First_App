import 'package:flutter/material.dart';
import '../../../../widget/custom_input.dart';

class EmailInput extends StatelessWidget {
  EmailInput({super.key});
  final TextEditingController controller = TextEditingController();

  String? emailValidator(String? email) {
    if (email == null || email.isEmpty) {
      return 'Email cannot be empty';
    }
    final regex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    return regex.hasMatch(email) ? null : 'Invalid email address';
  }

  @override
  Widget build(BuildContext context) {
    return CustomInput(
      labelText: 'Email',
      hintText: 'Enter your email',
      errorText: 'Invalid email address',
      pngPath: 'assets/png/email-outline.png',
      validator: emailValidator,
      isPassword: false,
      controller: controller,
    );
  }
}
