import 'package:flutter/material.dart';
import 'package:new_project/styles/dimensions.dart';
import 'package:new_project/ui/widget/custom_button.dart';

class SignInButton extends StatelessWidget {
  final bool isEnabled;
  final VoidCallback? onPressed;

  const SignInButton({
    super.key,
    required this.isEnabled,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return CustomButton(
        onTap: onPressed,
        enabled: isEnabled,
        width: AppDimensions.continueWithButtonWidth,
        height: AppDimensions.btAuthHeight,
        child: Text(
          'Sign In',
          style: TextStyle(
            fontFamily:
                'Roboto', // Đảm bảo rằng font Roboto đã được thêm vào pubspec.yaml
            fontSize: AppDimensions.screenHeight * 18.0 / 706,
            fontWeight: FontWeight.bold,
            height: AppDimensions.screenHeight *
                21.09 /
                18.0 /
                706, // line-height chia cho font-size để tính toán height
            color: Colors.white,
          ),
        ));
  }
}
