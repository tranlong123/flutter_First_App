import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../styles/colors.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  WelcomeScreenState createState() => WelcomeScreenState();
}

class WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    // Chuyển sang màn hình Auth sau 2 giây
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/auth');
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: bgColor,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Container(
          width: 230,
          height: 230,
          decoration: const BoxDecoration(
            color: boxWellcomeColor,
            borderRadius: BorderRadius.all(Radius.circular(70.0)),
          ),
          child: const SizedBox(
            width: 230,
            height: 230,
            child: Center(
              child: DefaultTextStyle(
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  color: Colors.black
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'WellCome',
                    ),
                    Text(
                      'to Flutter',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
