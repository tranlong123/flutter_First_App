import 'package:flutter/material.dart';
import 'ui/screens/auth_screen.dart';
import 'ui/screens/wellcome_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
      routes: {
        '/auth': (context) => const AuthScreen(),
      },
    );
  }
}
