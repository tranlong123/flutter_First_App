import 'package:flutter/material.dart';
import 'package:new_project/styles/dimensions.dart';

class SiginUpHeader extends StatelessWidget {
  const SiginUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return Padding(
      padding: EdgeInsets.only(
          left: AppDimensions.screenHeight * 28 / 706,
          right: AppDimensions.screenHeight * 23 / 706,
          bottom: AppDimensions.screenHeight * 16 / 706),
      child: SizedBox(
        // width: AppDimensions.screenHeight*228/706,
        height: AppDimensions.screenHeight * 35 / 706,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context); // Trở về màn hình trước đó
              },
              child: Image.asset(
                'assets/png/back-icon.png',
                width: AppDimensions.backIconSize,
                height: AppDimensions.backIconSize,
              ),
            ),
            Text(
              'Register',
              style: TextStyle(
                fontFamily: 'Roboto', // Font family
                fontSize: AppDimensions.fontSize30, // Font size
                fontWeight: FontWeight.w700, // Font weight
                height: 35.16 / AppDimensions.fontSize30,
                textBaseline: TextBaseline.alphabetic,
              ),
            )
          ],
        ),
      ),
    );
  }
}
