import 'package:expense_app_with_ocr/constants/constant.dart';
import 'package:expense_app_with_ocr/views/auth/login/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            fullscreenDialog: true,
            builder: (context) => const LoginScreen(),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.all(ConfigConstant.paddingSmall),
          child: ListTile(
            title: Center(
              child: Text(
                'Sign In',
                style: TextStyle(
                  color: ConfigConstant.secondaryColor,
                  fontSize: ConfigConstant.fontExtraLarge,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
