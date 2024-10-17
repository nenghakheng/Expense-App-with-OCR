import 'package:expense_app_with_ocr/constants/constant.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Login button pressed');
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(
          ConfigConstant.paddingMedium,
        ),
        decoration: BoxDecoration(
          color: ConfigConstant.secondaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
          child: Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              fontSize: ConfigConstant.fontLarge,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
