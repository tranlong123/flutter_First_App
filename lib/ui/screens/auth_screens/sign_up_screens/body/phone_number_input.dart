import 'package:flutter/material.dart';
import 'package:new_project/styles/dimensions.dart';
import '../../../../widget/custom_input.dart';

class PhoneNumberInput extends StatelessWidget {
  final TextEditingController controller;
  final Function onFormChanged;
  const PhoneNumberInput(
      {super.key, required this.controller, required this.onFormChanged});
  String? phoneValidator(String? phone) {
    if (phone == null || phone.isEmpty) {
      return '';
    }
    final regex = RegExp(r'^[0-9]{10}$'); // Định dạng số điện thoại 10 chữ số
    return regex.hasMatch(phone) ? null : 'Invalid phone number';
  }

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return Padding(
      padding: EdgeInsets.only(
        top: AppDimensions.screenHeight * 15 / 706,
      ),
      child: CustomInput(
        labelText: 'Phone Number',
        hintText: 'Enter your Phone Number',
        pngPath: 'assets/png/mobi-icon.png',
        validator: phoneValidator,
        isPassword: false,
        controller: controller,
        height: AppDimensions.phoneNumberInputHeight,
        width: AppDimensions.phoneNumberInputWidth,
        paddingLeft: AppDimensions.screenHeight * 26 / 706,
        iconSize: AppDimensions.phoneIconSize,
        maxLength: 10,
      ),
    );
  }
}
