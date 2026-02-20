import 'package:dio/dio.dart';
import 'package:project/core/networking/api_constant.dart';
import 'package:project/feature/login/data/models/model_request_body.dart';
import 'package:project/feature/login/data/models/model_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'wep_services.g.dart';

@RestApi(baseUrl: ApiConstant.apiBaseUrl)
abstract class WepServices {
  factory WepServices(Dio dio, {String baseUrl}) = _WepServices;

  @POST(ApiConstant.logIn)
  Future<LoginResponse> login(@Body() ModelRequestBody modelRequestBody);
}
