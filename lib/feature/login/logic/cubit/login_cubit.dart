import 'package:flutter/widgets.dart';
import '../../../../core/networking/api_result.dart';
import '../../data/models/model_request_body.dart';
import '../../data/repos/login_repo.dart';
import 'login_state.dart';
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
