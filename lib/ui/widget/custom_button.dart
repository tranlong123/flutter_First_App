import 'package:flutter/material.dart';
import 'package:new_project/styles/colors.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;
  final bool enabled;
  final Color enabledColor;
  final Color disabledColor;
  final double borderRadius;
  final double width;
  final double height;
  final TextStyle? textStyle;

  const CustomButton({
    super.key,
    required this.child,
    this.onTap,
    this.enabledColor = bgColor,
    this.disabledColor = btDisabledColor,
    this.borderRadius = 50.0,
    this.textStyle,
    required this.enabled,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Material(
        color: enabled ? enabledColor : disabledColor,
        borderRadius: BorderRadius.circular(borderRadius),
        child: InkWell(
          onTap: enabled ? onTap : null,
          borderRadius: BorderRadius.circular(borderRadius),
          child: Center(
            child: DefaultTextStyle(
              style: textStyle ?? DefaultTextStyle.of(context).style,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
