import 'package:flutter/material.dart';
import 'package:new_project/styles/colors.dart';

import './custom_input_state.dart';

class CustomInput extends StatefulWidget {
  final String labelText;
  final String hintText;
  final String? pngPath;
  final String? eyeIcon;
  final String? eyeOffIcon;
  final Color fillColor;
  final Color errorColor;
  final String? Function(String?) validator;
  final bool isPassword;
  final TextEditingController? controller;
  final double? width;
  final double? height;
  final double? paddingLeft;
  final double? iconSize;

  const CustomInput({
    super.key,
    required this.labelText,
    required this.hintText,
    this.pngPath,
    this.eyeIcon = 'assets/png/eye-outline.png',
    this.eyeOffIcon = 'assets/png/eye-off-outline.png',
    this.fillColor = textInputBg,
    this.errorColor = errColor,
    required this.validator,
    this.isPassword = false,
    this.controller,
    this.width,
    this.height,
    this.paddingLeft,
    this.iconSize,
  });

  @override
  CustomInputState createState() => CustomInputState();
}
