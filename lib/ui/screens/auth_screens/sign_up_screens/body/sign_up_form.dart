import 'package:flutter/material.dart';
import 'package:new_project/ui/screens/auth_screens/sign_up_screens/body/add_avartar.dart';
import 'package:new_project/ui/screens/auth_screens/sign_up_screens/body/avartar_text.dart';
import 'package:new_project/ui/screens/auth_screens/sign_up_screens/body/phone_number_input.dart';
import 'package:new_project/ui/screens/auth_screens/sign_up_screens/body/sign_up_button.dart';
import '../../../../../styles/dimensions.dart';

class SignUpForm extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final bool isButtonEnabled;
  final VoidCallback onFormChanged;
  final VoidCallback onSignInPressed;

  const SignUpForm({
    super.key,
    required this.formKey,
    required this.isButtonEnabled,
    required this.onFormChanged,
    required this.onSignInPressed,
  });

  @override
  SignUpFormState createState() => SignUpFormState();
}

class SignUpFormState extends State<SignUpForm> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);

    return SizedBox(
      width: AppDimensions.screenWidth,
      height: AppDimensions.signUpBodyHeight,
      child: Container(
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
                  PhoneNumberInput(
                    controller: _controller,
                    onFormChanged: widget.onFormChanged,
                  ),
                  const AddAvartar()
                ],
              ),
              SignUpButton(
                isEnabled: widget.isButtonEnabled,
                onPressed: widget.onSignInPressed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
