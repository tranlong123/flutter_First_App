import 'package:flutter/material.dart';
import 'package:new_project/styles/colors.dart';
import 'package:new_project/styles/dimensions.dart';

class CustomInputDecoration extends StatelessWidget {
  final TextEditingController controller;
  final bool isPassword;
  final String labelText;
  final String hintText;
  final Color fillColor;
  final Color errorColor;
  final String? Function(String?) validator;
  final double? iconSize;
  final String? eyeIcon;
  final String? eyeOffIcon;
  final VoidCallback? onEyeIconPressed;

  const CustomInputDecoration({
    super.key,
    required this.controller,
    required this.isPassword,
    required this.labelText,
    required this.hintText,
    required this.fillColor,
    required this.errorColor,
    required this.validator,
    this.iconSize,
    this.eyeIcon,
    this.eyeOffIcon,
    this.onEyeIconPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        fontFamily: 'Roboto',
        fontSize: 16,
      ),
      controller: controller,
      obscureText: isPassword ? (controller.text.isEmpty ? true : false) : false,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          color: controller.text.isEmpty
              ? Colors.grey
              : (validator(controller.text) != null
                  ? errorColor
                  : bgColor),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        ),
        hintText: hintText,
        fillColor: fillColor,
        filled: true,
        contentPadding: EdgeInsets.only(
          left: AppDimensions.screenHeight * 20 / 706,
          top: AppDimensions.screenHeight * 14 / 706,
          bottom: AppDimensions.screenHeight * 14 / 706,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
