import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/style.dart';
import '../../logic/cubit/signup_cubit.dart';
import '../../logic/cubit/signup_state.dart';

class BuildBlocListnere extends StatelessWidget {
  const BuildBlocListnere({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Sucsses || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(color: ColorsManager.gray),
              ),
            );
          },
          sucsses: (data) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                icon: const Icon(
                  Icons.done_all_outlined,
                  color: ColorsManager.gray,
                  size: 32,
                ),
                content: Text(
                  'Account Created Successfaly',
                  style: TextStyles.font15DarkBlueMedium,
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      context.pushReplacementName(Routes.homeScreen);
                    },
                    child: Text('Start', style: TextStyles.font14BlueSemiBold),
                  ),
                ],
              ),
            );
          },
          error: (error) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                icon: const Icon(Icons.error_outline, color: ColorsManager.red),
                content: Text(error),
                actions: [
                  TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: Text('Got it', style: TextStyles.font14BlueSemiBold),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
