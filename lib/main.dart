import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './ui/widget//custom_button.dart';

void main() {
  //khoi dong app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

     // Đặt màu status bar thành màu trắng và thay đổi icon thành màu tối
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Center(
              child: CustomButton(
            textStyle: const TextStyle(
              fontFamily: 'Roboto',
              fontSize: 18.0,
              color: Colors.white,
            ),
            onTap: () {
              print('hello');
            },
            child: const Text('Sign In'),
          )),
        ),
      ),
    );
  }
}
