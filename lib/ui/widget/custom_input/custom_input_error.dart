import 'package:flutter/material.dart';

class CustomInputError extends StatelessWidget {
  final String? errorText;
  final Color errorColor;

  const CustomInputError({
    super.key,
    this.errorText,
    required this.errorColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.0, // Tùy chỉnh chiều cao cho phù hợp
      child: Container(
        padding: const EdgeInsets.only(
          left: 15.0,
        ),
        child: errorText != null
            ? Text(
                errorText!,
                style: TextStyle(
                  color: errorColor,
                  fontFamily: 'Roboto',
                  fontSize: 10.0, // Tùy chỉnh kích thước chữ cho phù hợp
                  fontWeight: FontWeight.w500,
                ),
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}
