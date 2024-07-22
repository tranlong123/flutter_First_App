import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../styles/colors.dart';
import '../../../styles/dimensions.dart';
import 'wellcome_widget.dart';
import 'auth_buttons.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Lấy chiều cao của màn hình
    AppDimensions.init(context);

    // Đặt màu status bar
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: bgColor,
      statusBarIconBrightness: Brightness.dark,
    ));

    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          const Spacer(),
          const WellComeWidget(),
          SizedBox(height: AppDimensions.screenHeight * 113 / 706),
          const AuthButtons(),
        ],
      ),
    );
  }
}
