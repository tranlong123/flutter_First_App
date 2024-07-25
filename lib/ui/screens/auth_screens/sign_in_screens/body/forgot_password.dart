import 'package:flutter/material.dart';
import 'package:new_project/styles/dimensions.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Text(
        'Forgot passowrd?',
        style: TextStyle(
          fontFamily: 'Roboto', // font-family
          fontSize: AppDimensions.fontSize12, // font-size
          fontWeight: FontWeight.bold, // font-weight: 700
          height: 14.06 / AppDimensions.fontSize12,
          // line-height (tỉ lệ với font-size)
          textBaseline: TextBaseline.alphabetic,
        ),
        textAlign: TextAlign.right,
      ),
      SizedBox(
        width: AppDimensions.screenHeight * 30 / 706,
      ),
    ]);
  }
}
