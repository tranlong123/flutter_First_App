import 'package:flutter/material.dart';
import 'package:new_project/styles/dimensions.dart';
import '../../../../widget/custom_input.dart';

class UserName extends StatelessWidget {
  UserName({super.key});
  final TextEditingController controller = TextEditingController();

  String? nameValidator(String? name) {
    if (name == null || name.isEmpty) {
      return '';
    }
    if (name.length < 6) {
      return 'Name must be at least 6 characters';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return CustomInput(
      labelText: 'User Name',
      hintText: 'Enter your name',
      pngPath: 'assets/png/account.png',
      validator: nameValidator,
      isPassword: false,
      controller: controller,
    );
  }
}
