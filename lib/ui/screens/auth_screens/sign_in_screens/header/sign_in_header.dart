import 'package:flutter/material.dart';
import 'package:new_project/styles/dimensions.dart';

class SignInHeader extends StatelessWidget {
  const SignInHeader({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return Padding(
      padding: EdgeInsets.only(
          left: AppDimensions.screenHeight * 17 / 706,
          right: AppDimensions.screenHeight * 12 / 706),
      child: SizedBox(
        width: AppDimensions.headerWidth,
        height: AppDimensions.headerHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
                GestureDetector(
                    onTap: () {
                      FocusScope.of(context).unfocus(); // Đóng bàn phím
                      Future.delayed(const Duration(milliseconds: 400), () {
                        Navigator.pushNamed(context, '/signUp'); 
                      });
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontFamily: 'Roboto', // Font family
                        fontSize: AppDimensions.fontSize14, // Font size
                        fontWeight: FontWeight.w700, // Font weight
                        height: 16.41 /
                            AppDimensions
                                .fontSize14, // Line height (converted to factor)
                        textBaseline: TextBaseline.alphabetic,
                      ),
                    ))
              ],
            ),
            Text(
              'Sign In',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: AppDimensions.fontSize35,
                fontWeight: FontWeight.w700,
                height: 41.02 / AppDimensions.fontSize35,
                textBaseline: TextBaseline.alphabetic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
