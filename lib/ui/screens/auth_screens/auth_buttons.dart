import 'package:flutter/material.dart';
import '../../../styles/colors.dart';
import '../../widget/custom_button.dart';
import '../../../styles/dimensions.dart';

class AuthButtons extends StatelessWidget {
  const AuthButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        width: AppDimensions.containerBtAuthWidth,
        height: AppDimensions.containerBtAuthHeight,
        decoration: const BoxDecoration(
          color: boxWellcomeColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(80.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              width: AppDimensions.btAuthWidth,
              height: AppDimensions.btAuthHeight,
              enabled: true,
              onTap: () => Navigator.pushReplacementNamed(context, '/signIn'),
              textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: AppDimensions.customFontSize,
                color: Colors.white,
              ),
              child: const Text('Sign In'),
            ),
            const SizedBox(height: 22),
            CustomButton(
              width: AppDimensions.btAuthWidth,
              height: AppDimensions.btAuthHeight,
              onTap: () => Navigator.pushReplacementNamed(context, '/signUp'),
              enabled: true,
              textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: AppDimensions.customFontSize,
                color: Colors.white,
              ),
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
