import 'package:flutter/material.dart';
import 'package:new_project/styles/dimensions.dart';

class SiginUpHeader extends StatefulWidget {
  const SiginUpHeader({super.key});

  @override
  State<SiginUpHeader> createState() => _SiginUpHeaderState();
}

class _SiginUpHeaderState extends State<SiginUpHeader> {
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return Padding(
      padding: EdgeInsets.only(
          left: AppDimensions.screenHeight * 28 / 706,
          right: AppDimensions.screenHeight * 23 / 706,
          bottom: AppDimensions.screenHeight * 16 / 706),
      child: SizedBox(
        height: AppDimensions.screenHeight * 35 / 706,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus(); // Đóng bàn phím
                Future.delayed(const Duration(milliseconds: 400), () {
                  Navigator.pop(
                      context); // Trở về màn hình trước đó sau khi bàn phím đã rút
                });
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
