import 'package:flutter/material.dart';
import '../../styles/colors.dart';
import '../../styles/dimensions.dart';

class CustomInput extends StatefulWidget {
  final String labelText;
  final String hintText;
  final String? errorText;
  final String? pngPath; // chỉ sử dụng cho trường văn bản
  final String? eyeIcon; // chỉ sử dụng cho mật khẩu
  final String? eyeOffIcon; // chỉ sử dụng cho mật khẩu
  final Color fillColor;
  final Color errorColor;
  final String? Function(String?) validator;
  final bool isPassword; // Xác định xem đây có phải là trường mật khẩu không
  final TextEditingController? controller; // controller nhan tham so dau vao

  const CustomInput({
    super.key,
    required this.labelText,
    required this.hintText,
    this.errorText,
    this.pngPath,
    this.eyeIcon = 'assets/png/eye-outline.png',
    this.eyeOffIcon = 'assets/png/eye-off-outline.png',
    this.fillColor = textInputBg,
    this.errorColor = errColor,
    required this.validator,
    this.isPassword = false,
    this.controller, // Mặc định là trường văn bản
  });

  @override
  CustomInputState createState() => CustomInputState();
}

class CustomInputState extends State<CustomInput> {
  bool _isObscured = true;
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = widget.controller ?? TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.screenHeight * 30 / 706,
      ),
      child: TextFormField(
        style: TextStyle(
          fontFamily:
              'Roboto', // Đảm bảo rằng font Roboto đã được thêm vào pubspec.yaml
          fontSize: AppDimensions.screenHeight * 16 / 706,
          height: AppDimensions.screenHeight *
              21.09 /
              16 /
              706, // line-height chia cho font-size để tính toán height
        ),
        controller: controller,
        obscureText: widget.isPassword ? _isObscured : false,
        decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: TextStyle(
            color: controller.text.isEmpty
                ? Colors.grey
                : (widget.validator(controller.text) != null
                    ? widget.errorColor
                    : bgColor),
          ),
          hintText: widget.hintText,
          fillColor: widget.fillColor,
          filled: true,
          contentPadding: EdgeInsets.symmetric(
            horizontal: AppDimensions.screenHeight * 20 / 706,
            vertical: AppDimensions.screenHeight * 14 / 706,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide.none,
          ),
          suffixIcon: widget.isPassword
              ? Padding(
                padding: EdgeInsets.only(
                          right: AppDimensions.screenHeight * 8 / 706),
                child: IconButton(
                    icon: Image.asset(
                      _isObscured ? widget.eyeIcon! : widget.eyeOffIcon!,
                      width: AppDimensions.textInputIconSize,
                      height: AppDimensions.textInputIconSize,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscured = !_isObscured;
                      });
                    },
                  ),
              )
              : widget.pngPath != null
                  ? Padding(
                      padding: EdgeInsets.only(
                          right: AppDimensions.screenHeight * 14 / 706),
                      child: Image.asset(
                        widget.pngPath!,
                        width: AppDimensions.textInputIconSize,
                        height: AppDimensions.textInputIconSize,
                      ),
                    )
                  : null,
        ),
        validator: widget.validator,
      ),
    );
  }
}
