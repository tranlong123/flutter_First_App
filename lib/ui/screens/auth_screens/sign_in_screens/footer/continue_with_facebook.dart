import 'package:flutter/material.dart';

import '../../../../widget/continue_with_button.dart';

class ContinueWithFacebook extends StatelessWidget {
  const ContinueWithFacebook({super.key});

  @override
  Widget build(BuildContext context) {
    return ContinueWithButton(
      text: 'Continue with Facebook',
      leftIconPath:
          'assets/png/facebook.png', // Đường dẫn đến icon PNG bên trái
      rightIconPath:
          'assets/png/back-icon.png', // Đường dẫn đến icon PNG bên phải
      onPressed: () {
        // Xử lý sự kiện nhấn button
        // ignore: avoid_print
        print('Continue with Facebook');
      },
    );
  }
}
