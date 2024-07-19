import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../styles/colors.dart';
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Đặt màu status bar thành màu trắng và thay đổi icon thành màu tối
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: bgColor,
      statusBarIconBrightness: Brightness.dark,
    ));
    return const Scaffold(
      backgroundColor: bgColor,
    );
  }
}
