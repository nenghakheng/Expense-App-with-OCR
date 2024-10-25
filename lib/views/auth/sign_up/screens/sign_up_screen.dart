import 'package:expense_app_with_ocr/constants/constant.dart';
import 'package:expense_app_with_ocr/views/auth/local_widgets/or_divider.dart';
import 'package:expense_app_with_ocr/views/auth/sign_up/local_widgets/create_account_button.dart';
import 'package:expense_app_with_ocr/views/auth/sign_up/local_widgets/sign_in_button.dart';
import 'package:expense_app_with_ocr/views/auth/sign_up/local_widgets/sign_up_with_google_button.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Padding(
      padding: const EdgeInsets.all(ConfigConstant.paddingMedium),
      child: ListView(
        children: [
          buildMessages(),
          ConfigConstant.boxExtraLarge,
          ConfigConstant.boxLarge,
          const SignUpWithGoogleButton(),
          ConfigConstant.boxExtraLarge,
          ConfigConstant.boxLarge,
          const OrDivider(),
          ConfigConstant.boxExtraLarge,
          ConfigConstant.boxLarge,
          const CreateAccountButton(),
          ConfigConstant.boxExtraLarge,
          ConfigConstant.boxLarge,
          const Text(
            'Already have an account?',
            style: TextStyle(
              fontSize: ConfigConstant.fontLarge,
            ),
          ),
          ConfigConstant.boxMedium,
          const SignInButton(),
        ],
      ),
    );
  }

  Widget buildMessages() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Explore Now',
          style: TextStyle(
            fontSize: 55,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Join so today',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
