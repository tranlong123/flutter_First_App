import 'package:flutter/material.dart';
import 'ui/screens/auth_screens/auth_screen.dart';
import 'ui/screens/auth_screens/sign_in_screens/sign_in_screen.dart';
import 'ui/screens/auth_screens/sign_up_screens/sign_up_screen.dart';
// ignore: unused_import
import 'ui/screens/loading_screens/wellcome_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const WelcomeScreen(),
        // home:  const SignInScreen(),
        routes: {
          '/auth': (context) => const AuthScreen(),
          '/signIn': (context) => const SignInScreen(),
          '/signUp': (context) => const SignUpScreen(),
        });
  }
}
