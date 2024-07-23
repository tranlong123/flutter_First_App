import 'package:flutter/material.dart';
import 'package:new_project/styles/dimensions.dart';
import 'package:new_project/ui/screens/auth_screens/sign_in_screens/footer/continue_with_facebook.dart';
import 'package:new_project/ui/screens/auth_screens/sign_in_screens/footer/continue_with_google.dart';

import '../../../../../styles/colors.dart';

class SignInFooter extends StatelessWidget {
  const SignInFooter({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);

    return SizedBox(
      width: AppDimensions.screenWidth,
      height: AppDimensions.screenHeight * 188 / 706,
      child: Container(
          color: textInputBg,
          child: Column(
            children: [
              SizedBox(
                height: AppDimensions.screenHeight * 22 / 706,
              ),
              const ContinueWithGoogle(),
              SizedBox(
                height: AppDimensions.screenHeight * 28 / 706,
              ),
              const ContinueWithFacebook()
            ],
          )),
    );
  }
}
