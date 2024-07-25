import 'package:flutter/material.dart';
import 'package:new_project/styles/dimensions.dart';

class AddAvartar extends StatelessWidget {
  const AddAvartar({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return GestureDetector(
      onTap: () {
        // ignore: avoid_print
        print('add image được bấm!');
        // Thực hiện hành động khác ở đây
      },
      child: Image.asset(
        'assets/png/Add-Image.png',
        width:AppDimensions.addImageSize , // Chiều rộng của hình ảnh
        height:AppDimensions.addImageSize , // Chiều cao của hình ảnh
      ),
    );
  }
}
