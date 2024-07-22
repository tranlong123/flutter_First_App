import 'package:flutter/material.dart';
import '../../../styles/colors.dart';
import '../../../styles/dimensions.dart';

class WelcomeContainer extends StatelessWidget {
  const WelcomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return Container(
      width: AppDimensions.containerWellcome,
      height: AppDimensions.containerWellcome,
      decoration: const BoxDecoration(
        color: boxWellcomeColor,
        borderRadius: BorderRadius.all(Radius.circular(70.0)),
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
    );
  }
}
