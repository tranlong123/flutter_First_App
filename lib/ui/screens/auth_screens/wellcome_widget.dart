import 'package:flutter/material.dart';
import '../../../styles/colors.dart';
import '../../../styles/dimensions.dart';

class WellComeWidget extends StatelessWidget {
  const WellComeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: AppDimensions.containerWellcome,
        height: AppDimensions.containerWellcome,
        decoration: const BoxDecoration(
          color: boxWellcomeColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(80.0),
            bottomLeft: Radius.circular(80.0),
            bottomRight: Radius.circular(80.0),
          ),
        ),
        child: Center(
          child: DefaultTextStyle(
            style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w700,
              fontSize: AppDimensions.screenHeight * 30 / 706,
              color: Colors.black,
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('WellCome'),
                Text('to Flutter'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
