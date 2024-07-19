import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget child; // Widget con của button, thường là Text hoặc Icon
  final VoidCallback? onTap; // Hàm gọi lại khi button được nhấn
  final bool enabled; // Trạng thái của button, true nếu button có thể nhấn, false nếu không thể
  final Color enabledColor; // Màu sắc của button khi trạng thái là enabled
  final Color disabledColor; // Màu sắc của button khi trạng thái là disabled
  final double borderRadius; // Độ bo góc của button
  final double width; // Chiều rộng của button
  final double height; // Chiều cao của button
  final TextStyle? textStyle; // Kiểu chữ của text trong button
   const CustomButton({
    super.key,
    required this.child,
    this.onTap,
    this.enabled = true,
    this.enabledColor = const Color(0xFFFFB900),
    this.disabledColor = const Color(0xFFCECCC5),
    this.borderRadius = 50.0,
    this.width = 200.0,
    this.height = 58.0,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: enabled ? onTap : null,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: enabled ? enabledColor : disabledColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
          child: DefaultTextStyle(
            style: textStyle ?? DefaultTextStyle.of(context).style,
            child: child,
          ),
        ),
      ),
    );
  }
}
