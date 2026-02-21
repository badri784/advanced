import '../../../core/networking/api_error_handler.dart';
import '../../../core/networking/api_result.dart';
import '../../../core/networking/wep_services.dart';
import '../data/sign_up_model.dart';
import '../data/sign_up_response.dart';

class SignUpRepo {
  final WebServices webServices;

  SignUpRepo(this.webServices);

  Future<ApiResult<SignUpResponse>> signUp(SignUpModel signUpModel) async {
    try {
      final response = await webServices.signUp(signUpModel);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
