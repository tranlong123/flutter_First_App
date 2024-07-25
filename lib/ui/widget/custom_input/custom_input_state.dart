import 'package:flutter/material.dart';
import 'package:new_project/styles/dimensions.dart';
import 'package:new_project/ui/widget/custom_input/custom_input_decoration.dart';
import 'package:new_project/ui/widget/custom_input/custom_input_error.dart';
import '../../../styles/colors.dart';
import './custom_input.dart';

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
      padding: EdgeInsets.only(
        right: AppDimensions.screenHeight * 30 / 706,
        left: widget.paddingLeft ?? AppDimensions.screenHeight * 30 / 706,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: textInputBg,
            ),
            width: widget.width ?? double.infinity,
            height: widget.height,
            child: Row(
              children: [
                Expanded(
                  child: CustomInputDecoration(
                    controller: controller,
                    isPassword: widget.isPassword,
                    labelText: widget.labelText,
                    hintText: widget.hintText,
                    fillColor: widget.fillColor,
                    errorColor: widget.errorColor,
                    validator: widget.validator,
                    iconSize: widget.iconSize,
                    eyeIcon: widget.eyeIcon,
                    eyeOffIcon: widget.eyeOffIcon,
                    onEyeIconPressed: () {
                      if (widget.isPassword) {
                        setState(() {
                          _isObscured = !_isObscured;
                        });
                      }
                    },
                  ),
                ),
                if (widget.pngPath != null || widget.isPassword)
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: IconButton(
                      icon: Image.asset(
                        widget.isPassword
                            ? (_isObscured
                                ? widget.eyeIcon!
                                : widget.eyeOffIcon!)
                            : widget.pngPath!,
                        width: widget.iconSize ?? AppDimensions.textInputIconSize,
                        height: widget.iconSize ?? AppDimensions.textInputIconSize,
                      ),
                      onPressed: () {
                        if (widget.isPassword) {
                          setState(() {
                            _isObscured = !_isObscured;
                          });
                        }
                      },
                    ),
                  ),
              ],
            ),
          ),
          CustomInputError(
            errorText: widget.validator(controller.text),
            errorColor: widget.errorColor,
          ),
        ],
      ),
    );
  }
}
