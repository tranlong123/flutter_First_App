import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../styles/colors.dart';
import 'welcome_container.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  WelcomeScreenState createState() => WelcomeScreenState();
}

class WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    // Chuyển sang màn hình Auth sau 5 giây
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/auth');
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: bgColor,
      statusBarIconBrightness: Brightness.dark,
    ));
    return const Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: WelcomeContainer(),
      ),
    );
  }
}
