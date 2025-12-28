import 'package:flutter/material.dart';
import 'package:project/core/helpers/padding.dart';

import '../../core/theming/style.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Welcome Back', style: TextStyles.font24BoldBlue),
                verticalSpace(15),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last \'logged in.',
                  style: TextStyles.font14RegularGrey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
