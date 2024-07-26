import 'package:flutter/material.dart';
import 'package:new_project/styles/dimensions.dart';

class CustomBottomSheet extends StatelessWidget {
  final VoidCallback onGalleryTap;
  final VoidCallback onCameraTap;

  const CustomBottomSheet({
    super.key,
    required this.onGalleryTap,
    required this.onCameraTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.screenHeight * 149 / 706,
      width: AppDimensions.screenWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: onGalleryTap,
            child: Image.asset(
              'assets/png/image-plus.png',
              width: AppDimensions.bottomSheetIconSize,
              height: AppDimensions.bottomSheetIconSize,
            ),
          ),
          SizedBox(width: AppDimensions.screenHeight * 99 / 706),
          GestureDetector(
            onTap: onCameraTap,
            child: Image.asset(
              'assets/png/camera-plus.png',
              width: AppDimensions.bottomSheetIconSize,
              height: AppDimensions.bottomSheetIconSize,
            ),
          ),
        ],
      ),
    );
  }
}
