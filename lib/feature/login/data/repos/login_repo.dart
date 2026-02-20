import 'package:project/core/networking/api_error_handler.dart';
import 'package:project/core/networking/api_result.dart';
import 'package:project/core/networking/wep_services.dart';
import 'package:project/feature/login/data/models/model_request_body.dart';
import 'package:project/feature/login/data/models/model_response.dart';

class LoginRepo {
  final WepServices wepServices;

  LoginRepo(this.wepServices);

  Future<ApiResult<LoginResponse>> login(ModelRequestBody loginResponse) async {
    try {
      final response = await wepServices.login(loginResponse);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
