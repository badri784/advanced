import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/helpers/padding.dart';
import 'package:project/core/theming/style.dart';
import 'package:project/core/widget/app_text_form_feild.dart';
import 'package:project/feature/login/logic/cubit/login_cubit.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  late TextEditingController controllerr;

  bool isObscure = true;

  @override
  void initState() {
    super.initState();
    controllerr = context.read<LoginCubit>().emailController;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormFeildWidget(
            keyboardType: TextInputType.emailAddress,
            controller: context.read<LoginCubit>().emailController,
            textStyle: TextStyles.font24BoldBlue,
            hintText: 'Email',
            hintStyle: TextStyles.font14RegularLighterGray,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Email is required';
              }
              if (!value.contains('@')) {
                return 'Please enter a valid email';
              }
              return null;
            },
          ),
          verticalSpace(20),
          AppTextFormFeildWidget(
            hintText: 'Password',
            keyboardType: TextInputType.multiline,
            controller: context.read<LoginCubit>().passwordController,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
              icon: Icon(isObscure ? Icons.visibility : Icons.visibility_off),
            ),
            obscureText: isObscure,
            hintStyle: TextStyles.font14RegularLighterGray,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'PassWord is required';
              }
              if (value.length < 8) {
                return 'the Password Must Be At least 8 Character';
              }
            },
          ),
          verticalSpace(20),
        ],
      ),
    );
  }
}
