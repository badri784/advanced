import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/networking/api_result.dart';
import '../../data/sign_up_model.dart';

import 'signup_state.dart';
import '../../repo/sign_up_repo.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.signUpRepo) : super(const SignupState.initial());

  final SignUpRepo signUpRepo;

  final formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmationController =
      TextEditingController();

  void emitSignUp() async {
    final response = await signUpRepo.signUp(
      SignUpModel(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: 0,
      ),
    );
    response.when(
      success: (signUpResponse) {
        emit(SignupState.sucsses(signUpResponse));
      },
      failure: (error) {
        emit(SignupState.error(error: error.apiErrorModel.message!));
      },
    );
  }
}
