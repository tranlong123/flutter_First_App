import 'package:flutter/material.dart';

import '../../../../widget/continue_with_button.dart';

class ContinueWithGoogle extends StatelessWidget {
  const ContinueWithGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return ContinueWithButton(
      text: 'Continue with Google',
      leftIconPath:
          'assets/png/google.png', // Đường dẫn đến icon PNG bên trái
      rightIconPath:
          'assets/png/back-icon.png', // Đường dẫn đến icon PNG bên phải
      onPressed: () {
        // Xử lý sự kiện nhấn button
        // ignore: avoid_print
        print('Continue with Google');
      },
    );
  }
}
