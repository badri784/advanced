import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/style.dart';

class AlreadyHaveAccountSignIn extends StatelessWidget {
  const AlreadyHaveAccountSignIn({super.key});

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
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () => context.pushReplacementName(Routes.loginScreen),

            text: ' Sign in ',
            style: TextStyles.font12RigularMainBlue,
          ),
        ],
      ),
    );
  }
}
