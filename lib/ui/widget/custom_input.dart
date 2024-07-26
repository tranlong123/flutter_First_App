import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../styles/colors.dart';
import '../../styles/dimensions.dart';

class CustomInput extends StatefulWidget {
  final String labelText;
  final String hintText;
  final String? pngPath; // chỉ sử dụng cho trường văn bản
  final String? eyeIcon; // chỉ sử dụng cho mật khẩu
  final String? eyeOffIcon; // chỉ sử dụng cho mật khẩu
  final Color fillColor;
  final Color errorColor;
  final String? Function(String?) validator;
  final bool isPassword; // Xác định xem đây có phải là trường mật khẩu không
  final TextEditingController? controller; // controller nhan tham so dau vao
  final double? width; // Chiều rộng của TextFormField
  final double? height; // Chiều cao của TextFormField
  final double? paddingLeft;
  final double? iconSize;
  final int? maxLength;

  const CustomInput({
    super.key,
    required this.labelText,
    required this.hintText,
    this.pngPath,
    this.eyeIcon = 'assets/png/eye-outline.png',
    this.eyeOffIcon = 'assets/png/eye-off-outline.png',
    this.fillColor = textInputBg,
    this.errorColor = errColor,
    required this.validator,
    this.isPassword = false,
    this.controller,
    this.width,
    this.height,
    this.paddingLeft,
    this.iconSize,
    this.maxLength,
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

  String? validateInput(String? value) {
    if (value == null) {
      return null; // Không có thông báo lỗi, giá trị hợp lệ (null)
    } else if (value.isEmpty) {
      return 'Please enter some text'; // Thông báo lỗi nếu giá trị trống
    } else {
      return null; // Giá trị hợp lệ
    }
  }

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);

    return Padding(
        padding: EdgeInsets.only(
          right: AppDimensions.screenHeight * 30 / 706,
          left: widget.paddingLeft ?? AppDimensions.screenHeight * 30 / 706,
        ),
        child: SizedBox(
          width: widget.width,
          height: widget.height,
          child: Stack(children: [
            TextFormField(
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: AppDimensions.fontSize16,
              ),
              validator: widget.validator,
              autovalidateMode: AutovalidateMode.disabled,
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
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                  ),
                  errorStyle: TextStyle(
                    fontSize: AppDimensions.fontSize10,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    height: 0.1,
                    ),
                  hintText: widget.hintText,
                  fillColor: widget.fillColor,
                  filled: true,
                  contentPadding: EdgeInsets.only(
                    left: AppDimensions.screenHeight * 20 / 706,
                    top: widget.height != null
                        ? 0
                        : AppDimensions.screenHeight * 14 / 706,
                    bottom: widget.height != null
                        ? 0
                        : AppDimensions.screenHeight * 14 / 706,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: IconButton(
                      icon: Image.asset(
                        widget.isPassword
                            ? (_isObscured ? widget.eyeIcon! : widget.eyeOffIcon!)
                            : widget.pngPath!,
                        width: widget.iconSize ?? AppDimensions.textInputIconSize,
                        height:
                            widget.iconSize ?? AppDimensions.textInputIconSize,
                      ),
                      onPressed: () {
                        if (widget.isPassword) {
                          setState(() {
                            _isObscured = !_isObscured;
                          });
                        }
                      },
                    ),
                  )),
              inputFormatters: [
                // Giới hạn độ dài là 10 ký tự
                if (widget.maxLength != null)
                  LengthLimitingTextInputFormatter(widget.maxLength),
              ],
            ),
          ]),
        ));
  }
}
