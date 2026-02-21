import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/feature/signup/ui/widget/build_bloc_listnere.dart';
import '../../../core/helpers/padding.dart';
import '../../../core/theming/style.dart';
import '../../../core/widget/app_text_button.dart';
import '../data/sign_up_model.dart';
import '../logic/cubit/signup_cubit.dart';
import 'widget/already_have_account_sign_in.dart';
import 'widget/sign_up_detail.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 25.w),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Create Account', style: TextStyles.font32BoldBlue),
              Text(
                'sign up now and start exploring all that our app has to offer. we\'are excited to have you on board and can\'t wait to see what you will achieve with our app.',
                style: TextStyles.font14RegularLighterGray,
              ),
              verticalSpace(20),
              const SignUpDetail(),
              verticalSpace(20),
              AppTextButton(
                onPressed: () {
                  validateSignUp(context);
                },
                buttontext: 'SignUp',
              ),
              verticalSpace(25),
              const Center(child: AlreadyHaveAccountSignIn()),
              const BuildBlocListnere(),
            ],
          ),
        ),
      ),
    );
  }

  void validateSignUp(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignUp(
        SignUpModel(
          name: context.read<SignupCubit>().nameController.text,
          email: context.read<SignupCubit>().emailController.text,
          phone: context.read<SignupCubit>().phoneController.text,
          password: context.read<SignupCubit>().passwordController.text,
          passwordConfirmation: context
              .read<SignupCubit>()
              .passwordConfirmationController
              .text,
          gender: 0,
        ),
      );
    }
  }
}
