import 'package:flutter/material.dart';
import 'package:project/core/helpers/extensions.dart';
import 'package:project/core/routing/routes.dart';
import 'package:project/core/theming/colors.dart';
import '../../../../core/theming/style.dart';

class TextAndStartedButtom extends StatelessWidget {
  const TextAndStartedButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
            style: TextStyles.font12interblack,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              maximumSize: const Size(double.infinity, 56),
              padding: const EdgeInsets.symmetric(vertical: 15),
              backgroundColor: ColorsManager.mainBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            onPressed: () {
              context.pushnamed(Routes.loginScreen);
            },
            child: Text('Get Started', style: TextStyles.font16interwhite),
          ),
        ],
      ),
    );
  }
}
