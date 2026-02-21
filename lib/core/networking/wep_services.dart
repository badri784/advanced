import 'package:dio/dio.dart';
import 'api_constant.dart';
import '../../feature/login/data/models/model_request_body.dart';
import '../../feature/login/data/models/model_response.dart';
import '../../feature/signup/data/sign_up_model.dart';
import '../../feature/signup/data/sign_up_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'wep_services.g.dart';

@RestApi(baseUrl: ApiConstant.apiBaseUrl)
abstract class WebServices {
  factory WebServices(Dio dio, {String baseUrl}) = _WebServices;

  @POST(ApiConstant.logIn)
  Future<LoginResponse> login(@Body() ModelRequestBody modelRequestBody);

  @POST(ApiConstant.signUp)
  Future<SignUpResponse> signUp(@Body() SignUpModel signUpModel);
}
