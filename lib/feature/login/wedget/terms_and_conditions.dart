import 'package:flutter/material.dart';
import 'package:project/core/theming/colors.dart';

import '../../../core/theming/style.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: TextStyles.font11RegularLightGrayForText,
          ),
          TextSpan(
            text: 'Terms & Conditions',
            style: TextStyles.font11RegularLightGrayForText.copyWith(
              color: ColorsManager.black,
            ),
          ),
          TextSpan(
            text: ' and ',
            style: TextStyles.font11RegularLightGrayForText,
          ),
          TextSpan(
            text: 'PrivacyPolicy.',
            style: TextStyles.font11RegularLightGrayForText.copyWith(
              height: 2,
              color: ColorsManager.black,
            ),
          ),
        ],
      ),
    );
  }
}
