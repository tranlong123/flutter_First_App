import 'package:flutter/material.dart';
import 'package:new_project/ui/screens/auth_screens/sign_up_screens/body/add_avartar.dart';
import 'package:new_project/ui/screens/auth_screens/sign_up_screens/body/avartar_text.dart';
import 'package:new_project/ui/screens/auth_screens/sign_up_screens/body/email_input_sign_up.dart';
import 'package:new_project/ui/screens/auth_screens/sign_up_screens/body/pass_sign_up.dart';
import 'package:new_project/ui/screens/auth_screens/sign_up_screens/body/phone_number_input.dart';
import 'package:new_project/ui/screens/auth_screens/sign_up_screens/body/re_pass.dart';
import 'package:new_project/ui/screens/auth_screens/sign_up_screens/body/sign_up_button.dart';
import 'package:new_project/ui/screens/auth_screens/sign_up_screens/body/check_box_row.dart';
import 'package:new_project/ui/screens/auth_screens/sign_up_screens/body/user_name.dart';
import '../../../../../styles/dimensions.dart';
// ignore: depend_on_referenced_packages
import 'package:image_picker/image_picker.dart';

class SignUpForm extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final bool isButtonEnabled;
  final VoidCallback onFormChanged;
  final VoidCallback onSignUpPressed;
  final bool isChecked;
  final ValueChanged<bool?> onCheckboxChanged;
  final ValueChanged<XFile?> onImageChanged;
  final String? data;
  final Function(String) onEmailChanged;
  final Function(String) onPassChanged;
  final String pass;
  final String email;
  const SignUpForm({
    super.key,
    required this.formKey,
    required this.isButtonEnabled,
    required this.onFormChanged,
    required this.onSignUpPressed,
    required this.isChecked,
    required this.onCheckboxChanged,
    required this.onImageChanged,
    this.data,
    required this.onEmailChanged,
    required this.onPassChanged,
    required this.pass, required this.email,
  });

  @override
  SignUpFormState createState() => SignUpFormState();
}

class SignUpFormState extends State<SignUpForm> {
  final TextEditingController passController = TextEditingController();
  final TextEditingController rePassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);

    return Container(
      width: AppDimensions.screenWidth,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: Colors.white,
      ),
      child: Form(
        key: widget.formKey,
        onChanged: widget.onFormChanged,
        child: Column(
          children: [
            const AvartarText(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PhoneNumberInput(),
                AddAvatar(onImageSelected: widget.onImageChanged),
              ],
            ),
            SizedBox(
              height: AppDimensions.screenHeight * 26 / 706,
            ),
            EmailInputSignUp(
              initialValue: widget.data,
              onEmailChanged: widget.onEmailChanged,
            ),
            SizedBox(
              height: AppDimensions.screenHeight * 26 / 706,
            ),
            UserName(),
            SizedBox(
              height: AppDimensions.screenHeight * 26 / 706,
            ),
            PassSignUp(
                controller: passController,
                onPassChanged: widget.onPassChanged),
            SizedBox(
              height: AppDimensions.screenHeight * 26 / 706,
            ),
            RePass(
              passController: widget.pass,
              controller: rePassController,
            ),
            SizedBox(
              height: AppDimensions.screenHeight * 26 / 706,
            ),
            CheckBoxRow(
              isChecked: widget.isChecked,
              onChanged: widget.onCheckboxChanged,
            ),
            SizedBox(
              height: AppDimensions.screenHeight * 44 / 706,
            ),
            SignUpButton(
              isEnabled: widget.isButtonEnabled,
              onPressed: widget.onSignUpPressed,
            ),
            SizedBox(
              height: AppDimensions.screenHeight * 50 / 706,
            ),
          ],
        ),
      ),
    );
  }
}
