import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/helpers/extensions.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/style.dart';
import '../logic/cubit/login_cubit.dart';
import '../logic/cubit/login_state.dart';

class BuildBlocListener extends StatelessWidget {
  const BuildBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (_) => const Center(
                child: CircularProgressIndicator(color: ColorsManager.gray),
              ),
            );
          },
          success: (data) {
            context.pop();
            context.pushnamed(Routes.homeScreen);
          },
          error: (error) {
            context.pop();
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                icon: const Icon(
                  Icons.error_outline,
                  color: ColorsManager.red,
                  size: 32,
                ),
                content: Text(error, style: TextStyles.font15DarkBlueMedium),
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
