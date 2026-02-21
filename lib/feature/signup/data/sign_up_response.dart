// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:project/feature/signup/data/sign_up_user_data.dart';

part 'sign_up_response.g.dart';

@JsonSerializable()
class SignUpResponse {
  final String? message;
  @JsonKey(name: 'data')
  final SignUpUserData? userData;
  final bool? status;
  final int? code;
  SignUpResponse({this.message, this.userData, this.status, this.code});

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}
