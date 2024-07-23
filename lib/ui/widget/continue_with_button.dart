import 'package:flutter/material.dart';
import 'package:new_project/styles/dimensions.dart';

class ContinueWithButton extends StatelessWidget {
  final String text;
  final String leftIconPath;
  final String rightIconPath;
  final VoidCallback onPressed;

  const ContinueWithButton({
    super.key,
    required this.text,
    required this.leftIconPath,
    required this.rightIconPath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white, // Màu nền của button
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50), // Border radius
        ),
        elevation: 4, // Thay đổi để thêm hiệu ứng bóng
        shadowColor: Colors.black.withOpacity(0.25), // Màu của bóng
        minimumSize: Size.zero, // Đặt kích thước tối thiểu là 0
        padding: EdgeInsets.zero, // Loại bỏ padding mặc định
      ),
      child: SizedBox(
        width: AppDimensions.continueWithButtonWidth,
        height: AppDimensions.continueWithButtonHeight,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: AppDimensions.screenHeight * 15 / 706,
                ),
                Image.asset(leftIconPath,
                    width: AppDimensions.ggAndFaceIconSize,
                    height: AppDimensions
                        .ggAndFaceIconSize), // Icon bên trái từ PNG
                const SizedBox(width: 8), // Khoảng cách giữa icon và text
                Text(
                  text,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    fontSize: AppDimensions.screenHeight * 14 / 706,
                    height: 16.41 /
                        AppDimensions.screenHeight *
                        14 /
                        706, // Line height / Font size
                    color: const Color(0xFF000000)
                        .withOpacity(0.35), // Màu chữ với opacity
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(rightIconPath,
                    width: AppDimensions.ggAndFaceIconSize,
                    height: AppDimensions.ggAndFaceIconSize),
                SizedBox(
                  width: AppDimensions.screenHeight * 15 / 706,
                )
              ],
            ), // Icon PNG bên phải
          ],
        ),
      ),
    );
  }
}
