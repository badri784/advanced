import 'package:flutter/material.dart';

import '../../../core/theming/colors.dart';
import '../../../core/theming/style.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account yet? ',
            style: TextStyles.font11RegularLightGrayForText.copyWith(
              color: ColorsManager.black,
            ),
          ),
          TextSpan(text: ' Sign Up', style: TextStyles.font12RigularMainBlue),
        ],
      ),
    );
  }
}
