import 'package:expense_app_with_ocr/constants/constant.dart';
import 'package:flutter/material.dart';

class SignUpWithGoogleButton extends StatelessWidget {
  const SignUpWithGoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Sign up with google button pressed');
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(ConfigConstant.paddingSmall),
          child: buildButtonListTile(),
        ),
      ),
    );
  }

  Widget buildButtonListTile() {
    return ListTile(
      leading: Image.asset('assets/icons/google_icon.png'),
      title: const Text(
        'Sign Up with Email',
        style: TextStyle(
          fontSize: ConfigConstant.fontLarge,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
