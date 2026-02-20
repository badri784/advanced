import 'package:flutter/widgets.dart';
import 'package:project/core/networking/api_result.dart';
import 'package:project/feature/login/data/models/model_request_body.dart';
import 'package:project/feature/login/data/repos/login_repo.dart';
import 'package:project/feature/login/logic/cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  LoginCubit(this.loginRepo) : super(const LoginState.initial());

  final formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void emitLoginState(ModelRequestBody modelRequestBody) async {
    emit(const LoginState.loading());
    final response = await loginRepo.login(modelRequestBody);
    response.when(
      success: (loginresponse) {
        emit(LoginState.success(loginresponse));
      },
      failure: (error) {
        emit(
          LoginState.error(
            error: error.apiErrorModel.message ?? 'An error occurred',
          ),
        );
      },
    );
  }
}
