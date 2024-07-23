import 'package:flutter/material.dart';
import 'package:new_project/ui/screens/auth_screens/sign_in_screens/body/email_input.dart';
import 'package:new_project/ui/screens/auth_screens/sign_in_screens/body/password_input.dart';
import 'package:new_project/ui/screens/auth_screens/sign_in_screens/body/sign_in_button.dart';
import '../../../../../styles/dimensions.dart';

class SignInBody extends StatefulWidget {
  const SignInBody({super.key});

  @override
  SignInBodyState createState() => SignInBodyState();
}

class SignInBodyState extends State<SignInBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isButtonEnabled = false;

  void _updateButtonState() {
    setState(() {
      _isButtonEnabled = _formKey.currentState?.validate() ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Lấy chiều cao của màn hình
    AppDimensions.init(context);

    return Padding(
      padding: EdgeInsets.only(top: AppDimensions.screenHeight * 44 / 706),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30)), // Áp dụng borderRadius
        ),
        child: SizedBox(
          width: AppDimensions.screenWidth,
          height: AppDimensions.signInBodyHeight,
          child: Form(
            key: _formKey,
            onChanged: _updateButtonState,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: AppDimensions.screenHeight * 25 / 706,
                ),
                EmailInput(),
                SizedBox(
                  height: AppDimensions.screenHeight * 29 / 706,
                ), // Thêm khoảng cách giữa các widget
                PasswordInput(),
                SizedBox(
                  height: AppDimensions.screenHeight * 10 / 706,
                ), // Thêm khoảng cách giữa các widget
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
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
                ]),
                SizedBox(
                  height: AppDimensions.screenHeight * 33 / 706,
                ), // Thêm khoảng cách giữa các widget
                SignInButton(
                  isEnabled: _isButtonEnabled,
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      // Xử lý sự kiện đăng nhập
                      // ignore: avoid_print
                      print('Processing Sign In');
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
