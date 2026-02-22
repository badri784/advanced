import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/theming/colors.dart';

import '../../../../core/helpers/padding.dart';
import '../../../../core/widget/app_text_form_feild.dart';
import '../../logic/cubit/signup_cubit.dart';

class SignUpDetail extends StatefulWidget {
  const SignUpDetail({super.key});

  @override
  State<SignUpDetail> createState() => _SignUpDetailState();
}

class _SignUpDetailState extends State<SignUpDetail> {
  late TextEditingController controller;

  bool isObscure = true;

  @override
  void initState() {
    super.initState();
    controller = context.read<SignupCubit>().emailController;
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formKey,
      child: Column(
        children: [
          AppTextFormFeildWidget(
            onTapOutside: () {
              FocusScope.of(context).unfocus();
            },
            controller: context.read<SignupCubit>().nameController,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your name';
              }
              if (value.length < 4) {
                return 'Name Must be at least 4 characters';
              }
            },
            hintText: 'Name :',
          ),
          verticalSpace(15),
          AppTextFormFeildWidget(
            onTapOutside: () {
              FocusScope.of(context).unfocus();
            },
            controller: context.read<SignupCubit>().phoneController,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your phone number ';
              }
              if (value.length < 10) {
                return 'Phone Number Must Be At Least 10 Digits';
              }
            },
            hintText: 'Phone Number :',
          ),
          verticalSpace(15),
          AppTextFormFeildWidget(
            onTapOutside: () {
              FocusScope.of(context).unfocus();
            },
            controller: context.read<SignupCubit>().emailController,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              if (!value.contains('@') &&
                  !value.contains('.') &&
                  !value.contains('co')) {
                return 'Please enter valied email';
              }
            },
            hintText: 'Email :',
          ),
          verticalSpace(15),
          AppTextFormFeildWidget(
            onTapOutside: () {
              FocusScope.of(context).unfocus();
            },
            controller: context.read<SignupCubit>().passwordController,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valied password';
              }
              if (value.length < 8) {
                return 'Please enter a strong Password';
              }
            },
            hintText: 'Password :',
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
              icon: isObscure
                  ? const Icon(Icons.visibility, color: ColorsManager.gray)
                  : const Icon(Icons.visibility_off, color: ColorsManager.gray),
            ),
            obscureText: isObscure,
          ),
          verticalSpace(15),
          AppTextFormFeildWidget(
            onTapOutside: () {
              FocusScope.of(context).unfocus();
            },
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
              icon: isObscure
                  ? const Icon(Icons.visibility, color: ColorsManager.gray)
                  : const Icon(Icons.visibility_off, color: ColorsManager.gray),
            ),

            obscureText: isObscure,

            controller: context
                .read<SignupCubit>()
                .passwordConfirmationController,
            hintText: 'Confirm Password :',
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valied password';
              }
              if (context.read<SignupCubit>().passwordController.text !=
                  context
                      .read<SignupCubit>()
                      .passwordConfirmationController
                      .text) {
                return 'The Password Dos\'nt match';
              }
            },
          ),
        ],
      ),
    );
  }
}
