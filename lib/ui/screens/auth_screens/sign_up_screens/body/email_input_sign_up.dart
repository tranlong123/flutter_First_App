import 'package:flutter/material.dart';
import 'package:new_project/styles/dimensions.dart';
import '../../../../widget/custom_input/custom_input.dart';

class EmailInputSignUp extends StatelessWidget {
  EmailInputSignUp({super.key});
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
      validator: emailValidator,
      isPassword: false,
      controller: controller,
    );
  }
}
