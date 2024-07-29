import 'package:flutter/material.dart';
import '../../../../widget/custom_input.dart';

class RePass extends StatelessWidget {
  final TextEditingController controller;
  final String passController;

  const RePass(
      {super.key, required this.controller, required this.passController});

 String? rePassValidator(String? password) {
    if (password == null || password.isEmpty) {
      return '';
    }
    if (password != passController) {
      return 'Mật khẩu không khớp';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return CustomInput(
      labelText: 'Confirm Password',
      hintText: 'Confirm Password',
      validator: rePassValidator,
      isPassword: true,
      controller: controller,
    );
  }
}
