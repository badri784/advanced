import 'package:json_annotation/json_annotation.dart';
part 'model_request_body.g.dart';

@JsonSerializable()
class ModelRequestBody {
  final String email;
  final String password;

  ModelRequestBody({required this.email, required this.password});

  Map<String, dynamic> toJson() => _$ModelRequestBodyToJson(this);
}
