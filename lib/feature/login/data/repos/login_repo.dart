import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/wep_services.dart';
import '../models/model_request_body.dart';
import '../models/model_response.dart';

class LoginRepo {
  final WebServices webServices;

  LoginRepo(this.webServices);

  Future<ApiResult<LoginResponse>> login(ModelRequestBody loginResponse) async {
    try {
      final response = await webServices.login(loginResponse);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
