import 'package:flutter/material.dart';
import 'package:new_project/styles/colors.dart';
import 'package:new_project/styles/dimensions.dart';

class CheckBoxRow extends StatelessWidget {
  final bool isChecked;
  final ValueChanged<bool?> onChanged;

  const CheckBoxRow({
    super.key,
    required this.isChecked,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
          value: isChecked,
          onChanged: onChanged,
        ),
        Text(
          'I agree to the',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: AppDimensions.fontSize12,
            fontWeight: FontWeight.w700, // 700 is bold
            height: 14.06 / AppDimensions.fontSize12,
          ),
        ),
        Text(
          ' terms and use',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: AppDimensions.fontSize12,
            fontWeight: FontWeight.w700, // 700 is bold
            height: 14.06 / AppDimensions.fontSize12,
            color: bgColor,
          ),
        ),
      ],
    );
  }
}
