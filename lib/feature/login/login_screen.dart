import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/feature/login/wedget/already_have_account.dart';
import 'package:project/feature/login/wedget/terms_and_conditions.dart';

import '../../core/helpers/padding.dart';
import '../../core/widget/app_text_button.dart';
import '../../core/widget/app_text_form_feild.dart';
import '../../core/theming/style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

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
                Form(
                  key: formKey,

                  child: Column(
                    children: [
                      AppTextFormFeildWidget(
                        textStyle: TextStyles.font24BoldBlue,
                        hintText: 'Email',
                        hintStyle: TextStyles.font14RegularLighterGray,
                      ),
                      verticalSpace(20),
                      AppTextFormFeildWidget(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isObscure = !isObscure;
                            });
                          },
                          icon: Icon(
                            isObscure ? Icons.visibility : Icons.visibility_off,
                          ),
                        ),
                        obscureText: isObscure,
                        hintText: 'Password',
                        hintStyle: TextStyles.font14RegularLighterGray,
                      ),
                      verticalSpace(20),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forget Password?',
                          style: TextStyles.font12RigularMainBlue,
                        ),
                      ),
                      verticalSpace(50),
                      AppTextButton(buttontext: 'Login', onPressed: () {}),
                      verticalSpace(20),
                      const TermsAndConditions(),
                      verticalSpace(70),
                      const AlreadyHaveAccount(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
