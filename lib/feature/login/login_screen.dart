import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'logic/cubit/login_cubit.dart';
import 'wedget/already_have_account.dart';
import 'wedget/build_bloc_listener.dart';
import 'wedget/email_and_password.dart';
import 'wedget/terms_and_conditions.dart';

import '../../core/helpers/padding.dart';
import '../../core/widget/app_text_button.dart';
import '../../core/theming/style.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 35.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: TextStyles.font24BoldBlue),
                verticalSpace(15),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14RegularGrey,
                ),
                verticalSpace(38),
                Column(
                  children: [
                    const EmailAndPassword(),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'Forget Password?',
                        style: TextStyles.font12RigularMainBlue,
                      ),
                    ),
                    verticalSpace(28),
                    AppTextButton(
                      buttontext: 'Login',
                      onPressed: () {
                        validated(context);
                      },
                    ),
                    verticalSpace(20),
                    const TermsAndConditions(),
                    verticalSpace(50),
                    const AlreadyHaveAccount(),
                    const BuildBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validated(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState();
      // context.pushReplacementname(Routes.homeScreen);
    }
  }
}
