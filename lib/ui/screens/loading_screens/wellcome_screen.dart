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
  Widget build(BuildContext context) {
    final Map<String, String>? args =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>?;

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushNamed(
        context,
        '/signIn',
        arguments: args,
      );
    });
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
