import 'package:flutter/material.dart';
import 'package:new_project/styles/dimensions.dart';

class AvartarText extends StatelessWidget {
  const AvartarText({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return Padding(
      padding: EdgeInsets.only(top: AppDimensions.screenHeight * 9 / 706),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Avartar',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: AppDimensions.fontSize17,
              fontWeight: FontWeight.bold, // tương đương font-weight: 700
              height: 1.17, // line-height / font-size (19.92 / 17)
              color: const Color(0xFF9F9F9F),
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            width: AppDimensions.screenHeight * 32 / 706,
          )
        ],
      ),
    );
  }
}
