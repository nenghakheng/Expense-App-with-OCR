import 'package:expense_app_with_ocr/constants/constant.dart';
import 'package:flutter/material.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ConfigConstant.secondaryColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Padding(
        padding: EdgeInsets.all(ConfigConstant.paddingSmall),
        child: ListTile(
          title: Center(
            child: Text(
              'Create Account',
              style: TextStyle(
                color: Colors.white,
                fontSize: ConfigConstant.fontExtraLarge,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
